defmodule ExSui.Core do
  @moduledoc """
  Contains functions to interface with the Sui Ledger service.
  """
  alias ExSui.Client
  alias Sui.Rpc.V2beta.Checkpoint
  alias Sui.Rpc.V2beta.GetEpochRequest
  alias Sui.Rpc.V2beta.LedgerService.Stub, as: LedgerStub
  alias Sui.Rpc.V2alpha.LiveDataService.Stub, as: LiveDataStub
  alias Sui.Rpc.V2beta.GetCheckpointRequest
  alias Sui.Rpc.V2beta.GetTransactionRequest
  alias Sui.Rpc.V2beta.Transaction
  alias Sui.Rpc.V2beta.Epoch
  alias ExSui.Types.GetCoinOptions
  alias Sui.Rpc.V2alpha.ListOwnedObjectsRequest
  alias Sui.Rpc.V2alpha.ListOwnedObjectsResponse
  alias Sui.Rpc.V2alpha.GetBalanceRequest
  alias Sui.Rpc.V2alpha.GetBalanceResponse

  @doc """
  Gets the current sui blockchain reference gas price.
  """
  @spec get_reference_gas_price(GetEpochRequest.t() | nil) ::
          {:ok, Epoch.t()} | {:error, GRPC.RPCError.t()}
  def get_reference_gas_price(request \\ nil)

  def get_reference_gas_price(request) when is_nil(request) do
    request = %GetEpochRequest{
      read_mask: %{
        paths: [
          "epoch",
          "reference_gas_price",
          "first_checkpoint",
          "last_checkpoint",
          "start",
          "end",
          "system_state"
        ]
      }
    }

    Client.channel() |> LedgerStub.get_epoch(request)
  end

  def get_reference_gas_price(request) do
    Client.channel() |> LedgerStub.get_epoch(request)
  end

  @doc """
  Gets the current sui blockchain checkpoint.
  """
  @spec get_checkpoint(GetCheckpointRequest.t() | nil) ::
          {:ok, Checkpoint.t()} | {:error, GRPC.RPCError.t()}

  def get_checkpoint(request \\ nil)

  def get_checkpoint(request) when is_nil(request) do
    request = %GetCheckpointRequest{
      read_mask: %{paths: ["summary", "digest", "sequence_number"]}
    }

    Client.channel() |> LedgerStub.get_checkpoint(request)
  end

  def get_checkpoint(request) do
    Client.channel() |> LedgerStub.get_checkpoint(request)
  end

  @doc """
  Gets a transaction's details.
  """
  @spec get_transaction(GetTransactionRequest.t()) ::
          {:ok, Transaction.t()} | {:error, GRPC.RPCError.t()}
  def get_transaction(request) do
    Client.channel() |> LedgerStub.get_transaction(request)
  end

  @doc """
  Gets coins owned by an address.
  """
  @spec get_coins(GetCoinOptions.t()) ::
          {:ok, any} | {:error, GRPC.RPCError.t()}
  def get_coins(options) do
    channel = Client.channel()

    case LiveDataStub.list_owned_objects(channel, %ListOwnedObjectsRequest{
           owner: options.address
           # object_type: "0x2::coin::Coin<#{options.coin_type}>",
           # page_token: if(options.cursor, do: options.cursor, else: nil)
         }) do
      {:ok, objects} -> {:ok, objects}
      {:error, error} -> {:error, error}
    end
  end

  @doc """
  Gets coin balances owned by an address.
  """
  @spec get_balance(GetBalanceRequest.t()) ::
          {:ok, GetBalanceResponse.t()} | {:error, GRPC.RPCError.t()}
  def get_balance(request) do
    Client.channel() |> LiveDataStub.get_balance(request)
  end

  @doc """
  Gets owmed balances owned by an address.
  """
  @spec get_owned_objects(ListOwnedObjectsRequest.t()) ::
          {:ok, ListOwnedObjectsResponse.t()} | {:error, GRPC.RPCError.t()}
  def get_owned_objects(request) do
    Client.channel() |> LiveDataStub.list_owned_objects(request)
  end
end
