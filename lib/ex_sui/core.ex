defmodule ExSui.Core.Example do
  alias Sui.Rpc.V2beta.LedgerService.Stub
  alias Sui.Rpc.V2beta.BatchGetObjectsRequest
  alias Sui.Rpc.V2beta.GetObjectRequest
  alias Sui.Rpc.V2beta.GetCheckpointRequest

  def get_objects(channel) do
    request = %BatchGetObjectsRequest{
      requests: [
        %GetObjectRequest{
          object_id: "0x148a3a004f19aeea0b5df7ffc82a23935ff6cccca433e8e9c14c0f55595425e8"
        }
      ]
    }

    case Stub.batch_get_objects(channel, request) do
      {:ok, reply} ->
        IO.inspect(reply, label: "Response")

      {:error, error} ->
        IO.inspect(error, label: "Error")
    end
  end

  def get_object(channel) do
    request =
      %GetObjectRequest{
        object_id: "0x148a3a004f19aeea0b5df7ffc82a23935ff6cccca433e8e9c14c0f55595425e8"
      }

    case Stub.get_object(channel, request) do
      {:ok, reply} ->
        IO.inspect(reply, label: "Response")

        {:ok, reply}

      {:error, error} ->
        IO.inspect(error, label: "Error")

        {:error, error}
    end
  end

  def get_reference_gas_price(channel) do
    request =
      %GetCheckpointRequest{}

    case Stub.get_epoch(channel, request) do
      {:ok, reply} ->
        IO.inspect(reply, label: "Response")
        {:ok, reply}

      {:error, error} ->
        IO.inspect(error, label: "Error")
        {:error, error}
    end
  end
end
