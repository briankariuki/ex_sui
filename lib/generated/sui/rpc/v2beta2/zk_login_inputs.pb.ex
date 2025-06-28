defmodule Sui.Rpc.V2beta2.ZkLoginInputs do
  @moduledoc """
  A zklogin groth16 proof and the required inputs to perform proof verification.
  """

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "ZkLoginInputs",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "proof_points",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.ZkLoginProof",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "proofPoints",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "iss_base64_details",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.ZkLoginClaim",
          default_value: nil,
          options: nil,
          oneof_index: 1,
          json_name: "issBase64Details",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "header_base64",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 2,
          json_name: "headerBase64",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "address_seed",
          extendee: nil,
          number: 4,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 3,
          json_name: "addressSeed",
          proto3_optional: true,
          __unknown_fields__: []
        }
      ],
      nested_type: [],
      enum_type: [],
      extension_range: [],
      extension: [],
      options: nil,
      oneof_decl: [
        %Google.Protobuf.OneofDescriptorProto{
          name: "_proof_points",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_iss_base64_details",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_header_base64",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_address_seed",
          options: nil,
          __unknown_fields__: []
        }
      ],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :proof_points, 1,
    proto3_optional: true,
    type: Sui.Rpc.V2beta2.ZkLoginProof,
    json_name: "proofPoints"

  field :iss_base64_details, 2,
    proto3_optional: true,
    type: Sui.Rpc.V2beta2.ZkLoginClaim,
    json_name: "issBase64Details"

  field :header_base64, 3, proto3_optional: true, type: :string, json_name: "headerBase64"
  field :address_seed, 4, proto3_optional: true, type: :string, json_name: "addressSeed"
end
