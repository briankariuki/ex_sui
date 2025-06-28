defmodule Sui.Rpc.V2alpha.LiveDataService.Service do
  use GRPC.Service, name: "sui.rpc.v2alpha.LiveDataService", protoc_gen_elixir_version: "0.14.1"

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.ServiceDescriptorProto{
      name: "LiveDataService",
      method: [
        %Google.Protobuf.MethodDescriptorProto{
          name: "ListDynamicFields",
          input_type: ".sui.rpc.v2alpha.ListDynamicFieldsRequest",
          output_type: ".sui.rpc.v2alpha.ListDynamicFieldsResponse",
          options: nil,
          client_streaming: false,
          server_streaming: false,
          __unknown_fields__: []
        },
        %Google.Protobuf.MethodDescriptorProto{
          name: "ListOwnedObjects",
          input_type: ".sui.rpc.v2alpha.ListOwnedObjectsRequest",
          output_type: ".sui.rpc.v2alpha.ListOwnedObjectsResponse",
          options: nil,
          client_streaming: false,
          server_streaming: false,
          __unknown_fields__: []
        },
        %Google.Protobuf.MethodDescriptorProto{
          name: "GetCoinInfo",
          input_type: ".sui.rpc.v2alpha.GetCoinInfoRequest",
          output_type: ".sui.rpc.v2alpha.GetCoinInfoResponse",
          options: nil,
          client_streaming: false,
          server_streaming: false,
          __unknown_fields__: []
        },
        %Google.Protobuf.MethodDescriptorProto{
          name: "GetBalance",
          input_type: ".sui.rpc.v2alpha.GetBalanceRequest",
          output_type: ".sui.rpc.v2alpha.GetBalanceResponse",
          options: nil,
          client_streaming: false,
          server_streaming: false,
          __unknown_fields__: []
        },
        %Google.Protobuf.MethodDescriptorProto{
          name: "ListBalances",
          input_type: ".sui.rpc.v2alpha.ListBalancesRequest",
          output_type: ".sui.rpc.v2alpha.ListBalancesResponse",
          options: nil,
          client_streaming: false,
          server_streaming: false,
          __unknown_fields__: []
        },
        %Google.Protobuf.MethodDescriptorProto{
          name: "SimulateTransaction",
          input_type: ".sui.rpc.v2alpha.SimulateTransactionRequest",
          output_type: ".sui.rpc.v2alpha.SimulateTransactionResponse",
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
      Sui.Rpc.V2alpha.ListDynamicFieldsRequest,
      Sui.Rpc.V2alpha.ListDynamicFieldsResponse

  rpc :ListOwnedObjects,
      Sui.Rpc.V2alpha.ListOwnedObjectsRequest,
      Sui.Rpc.V2alpha.ListOwnedObjectsResponse

  rpc :GetCoinInfo, Sui.Rpc.V2alpha.GetCoinInfoRequest, Sui.Rpc.V2alpha.GetCoinInfoResponse

  rpc :GetBalance, Sui.Rpc.V2alpha.GetBalanceRequest, Sui.Rpc.V2alpha.GetBalanceResponse

  rpc :ListBalances, Sui.Rpc.V2alpha.ListBalancesRequest, Sui.Rpc.V2alpha.ListBalancesResponse

  rpc :SimulateTransaction,
      Sui.Rpc.V2alpha.SimulateTransactionRequest,
      Sui.Rpc.V2alpha.SimulateTransactionResponse
end

defmodule Sui.Rpc.V2alpha.LiveDataService.Stub do
  use GRPC.Stub, service: Sui.Rpc.V2alpha.LiveDataService.Service
end
