defmodule Sui.Rpc.V2beta.TransactionExecutionService.Service do
  use GRPC.Service,
    name: "sui.rpc.v2beta.TransactionExecutionService",
    protoc_gen_elixir_version: "0.14.1"

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.ServiceDescriptorProto{
      name: "TransactionExecutionService",
      method: [
        %Google.Protobuf.MethodDescriptorProto{
          name: "ExecuteTransaction",
          input_type: ".sui.rpc.v2beta.ExecuteTransactionRequest",
          output_type: ".sui.rpc.v2beta.ExecuteTransactionResponse",
          options: nil,
          client_streaming: false,
          server_streaming: false,
          __unknown_fields__: []
        }
      ],
      options: nil,
      __unknown_fields__: []
    }
  end

  rpc :ExecuteTransaction,
      Sui.Rpc.V2beta.ExecuteTransactionRequest,
      Sui.Rpc.V2beta.ExecuteTransactionResponse
end

defmodule Sui.Rpc.V2beta.TransactionExecutionService.Stub do
  use GRPC.Stub, service: Sui.Rpc.V2beta.TransactionExecutionService.Service
end
