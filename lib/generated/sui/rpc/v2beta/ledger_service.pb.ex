defmodule Sui.Rpc.V2beta.LedgerService.Service do
  use GRPC.Service, name: "sui.rpc.v2beta.LedgerService", protoc_gen_elixir_version: "0.14.1"

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.ServiceDescriptorProto{
      name: "LedgerService",
      method: [
        %Google.Protobuf.MethodDescriptorProto{
          name: "GetServiceInfo",
          input_type: ".sui.rpc.v2beta.GetServiceInfoRequest",
          output_type: ".sui.rpc.v2beta.GetServiceInfoResponse",
          options: nil,
          client_streaming: false,
          server_streaming: false,
          __unknown_fields__: []
        },
        %Google.Protobuf.MethodDescriptorProto{
          name: "GetObject",
          input_type: ".sui.rpc.v2beta.GetObjectRequest",
          output_type: ".sui.rpc.v2beta.Object",
          options: nil,
          client_streaming: false,
          server_streaming: false,
          __unknown_fields__: []
        },
        %Google.Protobuf.MethodDescriptorProto{
          name: "BatchGetObjects",
          input_type: ".sui.rpc.v2beta.BatchGetObjectsRequest",
          output_type: ".sui.rpc.v2beta.BatchGetObjectsResponse",
          options: nil,
          client_streaming: false,
          server_streaming: false,
          __unknown_fields__: []
        },
        %Google.Protobuf.MethodDescriptorProto{
          name: "GetTransaction",
          input_type: ".sui.rpc.v2beta.GetTransactionRequest",
          output_type: ".sui.rpc.v2beta.ExecutedTransaction",
          options: nil,
          client_streaming: false,
          server_streaming: false,
          __unknown_fields__: []
        },
        %Google.Protobuf.MethodDescriptorProto{
          name: "BatchGetTransactions",
          input_type: ".sui.rpc.v2beta.BatchGetTransactionsRequest",
          output_type: ".sui.rpc.v2beta.BatchGetTransactionsResponse",
          options: nil,
          client_streaming: false,
          server_streaming: false,
          __unknown_fields__: []
        },
        %Google.Protobuf.MethodDescriptorProto{
          name: "GetCheckpoint",
          input_type: ".sui.rpc.v2beta.GetCheckpointRequest",
          output_type: ".sui.rpc.v2beta.Checkpoint",
          options: nil,
          client_streaming: false,
          server_streaming: false,
          __unknown_fields__: []
        },
        %Google.Protobuf.MethodDescriptorProto{
          name: "GetEpoch",
          input_type: ".sui.rpc.v2beta.GetEpochRequest",
          output_type: ".sui.rpc.v2beta.Epoch",
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

  rpc :GetServiceInfo, Sui.Rpc.V2beta.GetServiceInfoRequest, Sui.Rpc.V2beta.GetServiceInfoResponse

  rpc :GetObject, Sui.Rpc.V2beta.GetObjectRequest, Sui.Rpc.V2beta.Object

  rpc :BatchGetObjects,
      Sui.Rpc.V2beta.BatchGetObjectsRequest,
      Sui.Rpc.V2beta.BatchGetObjectsResponse

  rpc :GetTransaction, Sui.Rpc.V2beta.GetTransactionRequest, Sui.Rpc.V2beta.ExecutedTransaction

  rpc :BatchGetTransactions,
      Sui.Rpc.V2beta.BatchGetTransactionsRequest,
      Sui.Rpc.V2beta.BatchGetTransactionsResponse

  rpc :GetCheckpoint, Sui.Rpc.V2beta.GetCheckpointRequest, Sui.Rpc.V2beta.Checkpoint

  rpc :GetEpoch, Sui.Rpc.V2beta.GetEpochRequest, Sui.Rpc.V2beta.Epoch
end

defmodule Sui.Rpc.V2beta.LedgerService.Stub do
  use GRPC.Stub, service: Sui.Rpc.V2beta.LedgerService.Service
end
