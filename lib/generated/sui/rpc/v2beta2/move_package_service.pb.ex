defmodule Sui.Rpc.V2beta2.MovePackageService.Service do
  use GRPC.Service,
    name: "sui.rpc.v2beta2.MovePackageService",
    protoc_gen_elixir_version: "0.14.1"

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.ServiceDescriptorProto{
      name: "MovePackageService",
      method: [
        %Google.Protobuf.MethodDescriptorProto{
          name: "GetPackage",
          input_type: ".sui.rpc.v2beta2.GetPackageRequest",
          output_type: ".sui.rpc.v2beta2.GetPackageResponse",
          options: nil,
          client_streaming: false,
          server_streaming: false,
          __unknown_fields__: []
        },
        %Google.Protobuf.MethodDescriptorProto{
          name: "GetDatatype",
          input_type: ".sui.rpc.v2beta2.GetDatatypeRequest",
          output_type: ".sui.rpc.v2beta2.GetDatatypeResponse",
          options: nil,
          client_streaming: false,
          server_streaming: false,
          __unknown_fields__: []
        },
        %Google.Protobuf.MethodDescriptorProto{
          name: "GetFunction",
          input_type: ".sui.rpc.v2beta2.GetFunctionRequest",
          output_type: ".sui.rpc.v2beta2.GetFunctionResponse",
          options: nil,
          client_streaming: false,
          server_streaming: false,
          __unknown_fields__: []
        },
        %Google.Protobuf.MethodDescriptorProto{
          name: "ListPackageVersions",
          input_type: ".sui.rpc.v2beta2.ListPackageVersionsRequest",
          output_type: ".sui.rpc.v2beta2.ListPackageVersionsResponse",
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

  rpc :GetPackage, Sui.Rpc.V2beta2.GetPackageRequest, Sui.Rpc.V2beta2.GetPackageResponse

  rpc :GetDatatype, Sui.Rpc.V2beta2.GetDatatypeRequest, Sui.Rpc.V2beta2.GetDatatypeResponse

  rpc :GetFunction, Sui.Rpc.V2beta2.GetFunctionRequest, Sui.Rpc.V2beta2.GetFunctionResponse

  rpc :ListPackageVersions,
      Sui.Rpc.V2beta2.ListPackageVersionsRequest,
      Sui.Rpc.V2beta2.ListPackageVersionsResponse
end

defmodule Sui.Rpc.V2beta2.MovePackageService.Stub do
  use GRPC.Stub, service: Sui.Rpc.V2beta2.MovePackageService.Service
end
