defmodule Sui.Rpc.V2beta2.SubscriptionService.Service do
  use GRPC.Service,
    name: "sui.rpc.v2beta2.SubscriptionService",
    protoc_gen_elixir_version: "0.14.1"

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.ServiceDescriptorProto{
      name: "SubscriptionService",
      method: [
        %Google.Protobuf.MethodDescriptorProto{
          name: "SubscribeCheckpoints",
          input_type: ".sui.rpc.v2beta2.SubscribeCheckpointsRequest",
          output_type: ".sui.rpc.v2beta2.SubscribeCheckpointsResponse",
          options: nil,
          client_streaming: false,
          server_streaming: true,
          __unknown_fields__: []
        }
      ],
      options: nil,
      __unknown_fields__: []
    }
  end

  rpc :SubscribeCheckpoints,
      Sui.Rpc.V2beta2.SubscribeCheckpointsRequest,
      stream(Sui.Rpc.V2beta2.SubscribeCheckpointsResponse)
end

defmodule Sui.Rpc.V2beta2.SubscriptionService.Stub do
  use GRPC.Stub, service: Sui.Rpc.V2beta2.SubscriptionService.Service
end
