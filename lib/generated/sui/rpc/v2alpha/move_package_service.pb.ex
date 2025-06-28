defmodule Sui.Rpc.V2alpha.MovePackageService.Service do
  use GRPC.Service,
    name: "sui.rpc.v2alpha.MovePackageService",
    protoc_gen_elixir_version: "0.14.1"

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.ServiceDescriptorProto{
      name: "MovePackageService",
      method: [
        %Google.Protobuf.MethodDescriptorProto{
          name: "GetPackage",
          input_type: ".sui.rpc.v2alpha.GetPackageRequest",
          output_type: ".sui.rpc.v2alpha.GetPackageResponse",
          options: nil,
          client_streaming: false,
          server_streaming: false,
          __unknown_fields__: []
        },
        %Google.Protobuf.MethodDescriptorProto{
          name: "GetModule",
          input_type: ".sui.rpc.v2alpha.GetModuleRequest",
          output_type: ".sui.rpc.v2alpha.GetModuleResponse",
          options: nil,
          client_streaming: false,
          server_streaming: false,
          __unknown_fields__: []
        },
        %Google.Protobuf.MethodDescriptorProto{
          name: "GetDatatype",
          input_type: ".sui.rpc.v2alpha.GetDatatypeRequest",
          output_type: ".sui.rpc.v2alpha.GetDatatypeResponse",
          options: nil,
          client_streaming: false,
          server_streaming: false,
          __unknown_fields__: []
        },
        %Google.Protobuf.MethodDescriptorProto{
          name: "GetFunction",
          input_type: ".sui.rpc.v2alpha.GetFunctionRequest",
          output_type: ".sui.rpc.v2alpha.GetFunctionResponse",
          options: nil,
          client_streaming: false,
          server_streaming: false,
          __unknown_fields__: []
        },
        %Google.Protobuf.MethodDescriptorProto{
          name: "ListPackageVersions",
          input_type: ".sui.rpc.v2alpha.ListPackageVersionsRequest",
          output_type: ".sui.rpc.v2alpha.ListPackageVersionsResponse",
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

  rpc :GetPackage, Sui.Rpc.V2alpha.GetPackageRequest, Sui.Rpc.V2alpha.GetPackageResponse

  rpc :GetModule, Sui.Rpc.V2alpha.GetModuleRequest, Sui.Rpc.V2alpha.GetModuleResponse

  rpc :GetDatatype, Sui.Rpc.V2alpha.GetDatatypeRequest, Sui.Rpc.V2alpha.GetDatatypeResponse

  rpc :GetFunction, Sui.Rpc.V2alpha.GetFunctionRequest, Sui.Rpc.V2alpha.GetFunctionResponse

  rpc :ListPackageVersions,
      Sui.Rpc.V2alpha.ListPackageVersionsRequest,
      Sui.Rpc.V2alpha.ListPackageVersionsResponse
end

defmodule Sui.Rpc.V2alpha.MovePackageService.Stub do
  use GRPC.Stub, service: Sui.Rpc.V2alpha.MovePackageService.Service
end
