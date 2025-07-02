defmodule ExSui.Core do
  @moduledoc """
  Contains functions to interface with the Sui Ledger service.
  """
  alias ExSui.Client
  alias Sui.Rpc.V2beta.Checkpoint
  alias Sui.Rpc.V2beta.GetEpochRequest
  alias Sui.Rpc.V2beta.LedgerService.Stub, as: LedgerStub
  alias Sui.Rpc.V2alpha.LiveDataService.Stub, as: LiveDataStub
  alias Sui.Rpc.V2beta.TransactionExecutionService.Stub, as: TransactionStub
  alias Sui.Rpc.V2beta.GetCheckpointRequest
  alias Sui.Rpc.V2beta.GetTransactionRequest
  alias Sui.Rpc.V2beta.BatchGetObjectsRequest
  alias Sui.Rpc.V2beta.BatchGetObjectsResponse
  alias Sui.Rpc.V2beta.GetObjectRequest
  alias Sui.Rpc.V2beta.Transaction
  alias Sui.Rpc.V2beta.Epoch
  alias Sui.Rpc.V2beta.Object
  alias ExSui.Types.GetCoinsOptions

  alias Sui.Rpc.V2alpha.ListOwnedObjectsRequest
  alias Sui.Rpc.V2alpha.ListOwnedObjectsResponse

  alias Sui.Rpc.V2alpha.SimulateTransactionRequest
  alias Sui.Rpc.V2alpha.SimulateTransactionResponse

  alias Sui.Rpc.V2alpha.GetBalanceRequest
  alias Sui.Rpc.V2alpha.GetBalanceResponse

  alias Sui.Rpc.V2beta.ExecuteTransactionRequest
  alias Sui.Rpc.V2beta.ExecuteTransactionResponse

  alias Sui.Rpc.V2beta.GetServiceInfoRequest
  alias Sui.Rpc.V2beta.GetServiceInfoResponse

  alias Sui.Rpc.V2alpha.ListDynamicFieldsRequest
  alias Sui.Rpc.V2alpha.ListDynamicFieldsResponse

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
          "start",
          "end"
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
  Gets the connected sui gRPC service information.
  """
  @spec get_service_info(GetServiceInfoRequest.t() | nil) ::
          {:ok, GetServiceInfoResponse.t()} | {:error, GRPC.RPCError.t()}

  def get_service_info(request \\ nil)

  def get_service_info(request) when is_nil(request) do
    request = %GetServiceInfoRequest{}

    Client.channel() |> LedgerStub.get_service_info(request)
  end

  def get_service_info(request) do
    Client.channel() |> LedgerStub.get_service_info(request)
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
  Gets coins of some type owned by an address.
  """
  @spec get_coins(GetCoinsOptions.t()) ::
          {:ok, ListOwnedObjectsResponse.t()} | {:error, GRPC.RPCError.t()}
  def get_coins(options) do
    Client.channel()
    |> LiveDataStub.list_owned_objects(%ListOwnedObjectsRequest{
      owner: options.address,
      object_type: "0x2::coin::Coin<#{options.coin_type}>",
      page_token: if(options.cursor, do: options.cursor, else: nil)
    })
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

  @doc """
  Gets an object by its object id.
  """
  @spec get_object(GetObjectRequest.t()) ::
          {:ok, Object.t()} | {:error, GRPC.RPCError.t()}
  def get_object(request) do
    Client.channel() |> LedgerStub.get_object(request)
  end

  @doc """
  Gets batch objects by their object id.
  """
  @spec get_objects(BatchGetObjectsRequest.t()) ::
          {:ok, BatchGetObjectsResponse.t()} | {:error, GRPC.RPCError.t()}
  def get_objects(request) do
    Client.channel() |> LedgerStub.batch_get_objects(request)
  end

  @doc """
  Simulates a transaction.
  """
  @spec dry_run_transaction(SimulateTransactionRequest.t()) ::
          {:ok, SimulateTransactionResponse.t()} | {:error, GRPC.RPCError.t()}
  def dry_run_transaction(request) do
    Client.channel() |> LiveDataStub.simulate_transaction(request)
  end

  @doc """
  Executes a transaction.
  """
  @spec execute_transaction(ExecuteTransactionRequest.t()) ::
          {:ok, ExecuteTransactionResponse.t()} | {:error, GRPC.RPCError.t()}
  def execute_transaction(request) do
    Client.channel() |> TransactionStub.execute_transaction(request)
  end

  @doc """
  Gets an object's dynamic fields
  """
  @spec get_dynamic_fields(ListDynamicFieldsRequest.t()) ::
          {:ok, ListDynamicFieldsResponse.t()} | {:error, GRPC.RPCError.t()}
  def get_dynamic_fields(request) do
    Client.channel() |> LiveDataStub.list_dynamic_fields(request)
  end
end
