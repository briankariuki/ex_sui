defmodule Sui.Rpc.V2alpha.SignatureVerificationService.Service do
  use GRPC.Service,
    name: "sui.rpc.v2alpha.SignatureVerificationService",
    protoc_gen_elixir_version: "0.14.1"

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.ServiceDescriptorProto{
      name: "SignatureVerificationService",
      method: [
        %Google.Protobuf.MethodDescriptorProto{
          name: "VerifySignature",
          input_type: ".sui.rpc.v2alpha.VerifySignatureRequest",
          output_type: ".sui.rpc.v2alpha.VerifySignatureResponse",
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

  rpc :VerifySignature,
      Sui.Rpc.V2alpha.VerifySignatureRequest,
      Sui.Rpc.V2alpha.VerifySignatureResponse
end

defmodule Sui.Rpc.V2alpha.SignatureVerificationService.Stub do
  use GRPC.Stub, service: Sui.Rpc.V2alpha.SignatureVerificationService.Service
end
