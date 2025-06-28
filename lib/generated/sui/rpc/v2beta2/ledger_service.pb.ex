defmodule Sui.Rpc.V2beta2.LedgerService.Service do
  use GRPC.Service, name: "sui.rpc.v2beta2.LedgerService", protoc_gen_elixir_version: "0.14.1"

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.ServiceDescriptorProto{
      name: "LedgerService",
      method: [
        %Google.Protobuf.MethodDescriptorProto{
          name: "GetServiceInfo",
          input_type: ".sui.rpc.v2beta2.GetServiceInfoRequest",
          output_type: ".sui.rpc.v2beta2.GetServiceInfoResponse",
          options: nil,
          client_streaming: false,
          server_streaming: false,
          __unknown_fields__: []
        },
        %Google.Protobuf.MethodDescriptorProto{
          name: "GetObject",
          input_type: ".sui.rpc.v2beta2.GetObjectRequest",
          output_type: ".sui.rpc.v2beta2.GetObjectResponse",
          options: nil,
          client_streaming: false,
          server_streaming: false,
          __unknown_fields__: []
        },
        %Google.Protobuf.MethodDescriptorProto{
          name: "BatchGetObjects",
          input_type: ".sui.rpc.v2beta2.BatchGetObjectsRequest",
          output_type: ".sui.rpc.v2beta2.BatchGetObjectsResponse",
          options: nil,
          client_streaming: false,
          server_streaming: false,
          __unknown_fields__: []
        },
        %Google.Protobuf.MethodDescriptorProto{
          name: "GetTransaction",
          input_type: ".sui.rpc.v2beta2.GetTransactionRequest",
          output_type: ".sui.rpc.v2beta2.GetTransactionResponse",
          options: nil,
          client_streaming: false,
          server_streaming: false,
          __unknown_fields__: []
        },
        %Google.Protobuf.MethodDescriptorProto{
          name: "BatchGetTransactions",
          input_type: ".sui.rpc.v2beta2.BatchGetTransactionsRequest",
          output_type: ".sui.rpc.v2beta2.BatchGetTransactionsResponse",
          options: nil,
          client_streaming: false,
          server_streaming: false,
          __unknown_fields__: []
        },
        %Google.Protobuf.MethodDescriptorProto{
          name: "GetCheckpoint",
          input_type: ".sui.rpc.v2beta2.GetCheckpointRequest",
          output_type: ".sui.rpc.v2beta2.GetCheckpointResponse",
          options: nil,
          client_streaming: false,
          server_streaming: false,
          __unknown_fields__: []
        },
        %Google.Protobuf.MethodDescriptorProto{
          name: "GetEpoch",
          input_type: ".sui.rpc.v2beta2.GetEpochRequest",
          output_type: ".sui.rpc.v2beta2.GetEpochResponse",
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

  rpc :GetServiceInfo,
      Sui.Rpc.V2beta2.GetServiceInfoRequest,
      Sui.Rpc.V2beta2.GetServiceInfoResponse

  rpc :GetObject, Sui.Rpc.V2beta2.GetObjectRequest, Sui.Rpc.V2beta2.GetObjectResponse

  rpc :BatchGetObjects,
      Sui.Rpc.V2beta2.BatchGetObjectsRequest,
      Sui.Rpc.V2beta2.BatchGetObjectsResponse

  rpc :GetTransaction,
      Sui.Rpc.V2beta2.GetTransactionRequest,
      Sui.Rpc.V2beta2.GetTransactionResponse

  rpc :BatchGetTransactions,
      Sui.Rpc.V2beta2.BatchGetTransactionsRequest,
      Sui.Rpc.V2beta2.BatchGetTransactionsResponse

  rpc :GetCheckpoint, Sui.Rpc.V2beta2.GetCheckpointRequest, Sui.Rpc.V2beta2.GetCheckpointResponse

  rpc :GetEpoch, Sui.Rpc.V2beta2.GetEpochRequest, Sui.Rpc.V2beta2.GetEpochResponse
end

defmodule Sui.Rpc.V2beta2.LedgerService.Stub do
  use GRPC.Stub, service: Sui.Rpc.V2beta2.LedgerService.Service
end
