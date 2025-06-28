defmodule Sui.Rpc.V2beta2.LiveDataService.Service do
  use GRPC.Service, name: "sui.rpc.v2beta2.LiveDataService", protoc_gen_elixir_version: "0.14.1"

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.ServiceDescriptorProto{
      name: "LiveDataService",
      method: [
        %Google.Protobuf.MethodDescriptorProto{
          name: "ListDynamicFields",
          input_type: ".sui.rpc.v2beta2.ListDynamicFieldsRequest",
          output_type: ".sui.rpc.v2beta2.ListDynamicFieldsResponse",
          options: nil,
          client_streaming: false,
          server_streaming: false,
          __unknown_fields__: []
        },
        %Google.Protobuf.MethodDescriptorProto{
          name: "ListOwnedObjects",
          input_type: ".sui.rpc.v2beta2.ListOwnedObjectsRequest",
          output_type: ".sui.rpc.v2beta2.ListOwnedObjectsResponse",
          options: nil,
          client_streaming: false,
          server_streaming: false,
          __unknown_fields__: []
        },
        %Google.Protobuf.MethodDescriptorProto{
          name: "GetCoinInfo",
          input_type: ".sui.rpc.v2beta2.GetCoinInfoRequest",
          output_type: ".sui.rpc.v2beta2.GetCoinInfoResponse",
          options: nil,
          client_streaming: false,
          server_streaming: false,
          __unknown_fields__: []
        },
        %Google.Protobuf.MethodDescriptorProto{
          name: "GetBalance",
          input_type: ".sui.rpc.v2beta2.GetBalanceRequest",
          output_type: ".sui.rpc.v2beta2.GetBalanceResponse",
          options: nil,
          client_streaming: false,
          server_streaming: false,
          __unknown_fields__: []
        },
        %Google.Protobuf.MethodDescriptorProto{
          name: "ListBalances",
          input_type: ".sui.rpc.v2beta2.ListBalancesRequest",
          output_type: ".sui.rpc.v2beta2.ListBalancesResponse",
          options: nil,
          client_streaming: false,
          server_streaming: false,
          __unknown_fields__: []
        },
        %Google.Protobuf.MethodDescriptorProto{
          name: "SimulateTransaction",
          input_type: ".sui.rpc.v2beta2.SimulateTransactionRequest",
          output_type: ".sui.rpc.v2beta2.SimulateTransactionResponse",
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

  rpc :ListDynamicFields,
      Sui.Rpc.V2beta2.ListDynamicFieldsRequest,
      Sui.Rpc.V2beta2.ListDynamicFieldsResponse

  rpc :ListOwnedObjects,
      Sui.Rpc.V2beta2.ListOwnedObjectsRequest,
      Sui.Rpc.V2beta2.ListOwnedObjectsResponse

  rpc :GetCoinInfo, Sui.Rpc.V2beta2.GetCoinInfoRequest, Sui.Rpc.V2beta2.GetCoinInfoResponse

  rpc :GetBalance, Sui.Rpc.V2beta2.GetBalanceRequest, Sui.Rpc.V2beta2.GetBalanceResponse

  rpc :ListBalances, Sui.Rpc.V2beta2.ListBalancesRequest, Sui.Rpc.V2beta2.ListBalancesResponse

  rpc :SimulateTransaction,
      Sui.Rpc.V2beta2.SimulateTransactionRequest,
      Sui.Rpc.V2beta2.SimulateTransactionResponse
end

defmodule Sui.Rpc.V2beta2.LiveDataService.Stub do
  use GRPC.Stub, service: Sui.Rpc.V2beta2.LiveDataService.Service
end
