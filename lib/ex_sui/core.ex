defmodule ExSui.Core do
  @moduledoc """
  Contains functions to interface with the Sui Ledger service.
  """
  alias ExSui.Client
  alias Sui.Rpc.V2beta.Checkpoint
  alias Sui.Rpc.V2beta.GetEpochRequest
  alias Sui.Rpc.V2beta.LedgerService.Stub, as: LedgerStub
  # alias Sui.Rpc.V2alpha.LiveDataService.Stub, as: LiveDataStub
  alias Sui.Rpc.V2beta.GetCheckpointRequest
  alias Sui.Rpc.V2beta.GetTransactionRequest
  alias Sui.Rpc.V2beta.Transaction
  alias Sui.Rpc.V2beta.Epoch

  @doc """
  Gets the current sui blockchain reference gas price.
  """
  @spec get_reference_gas_price(GetEpochRequest.t() | nil) ::
          {:ok, Epoch.t()} | {:error, GRPC.RPCError.t()}
  def get_reference_gas_price(request \\ nil)

  def get_reference_gas_price(request) when is_nil(request) do
    request = %GetEpochRequest{
      read_mask: %{
        paths: ["epoch", "reference_gas_price"]
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
    request = %GetCheckpointRequest{}
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
end
