defmodule Sui.Rpc.V2beta2.TransactionExecutionService.Service do
  use GRPC.Service,
    name: "sui.rpc.v2beta2.TransactionExecutionService",
    protoc_gen_elixir_version: "0.14.1"

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.ServiceDescriptorProto{
      name: "TransactionExecutionService",
      method: [
        %Google.Protobuf.MethodDescriptorProto{
          name: "ExecuteTransaction",
          input_type: ".sui.rpc.v2beta2.ExecuteTransactionRequest",
          output_type: ".sui.rpc.v2beta2.ExecuteTransactionResponse",
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
      Sui.Rpc.V2beta2.ExecuteTransactionRequest,
      Sui.Rpc.V2beta2.ExecuteTransactionResponse
end

defmodule Sui.Rpc.V2beta2.TransactionExecutionService.Stub do
  use GRPC.Stub, service: Sui.Rpc.V2beta2.TransactionExecutionService.Service
end
