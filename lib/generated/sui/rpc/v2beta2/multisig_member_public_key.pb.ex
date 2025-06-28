defmodule Sui.Rpc.V2beta2.MultisigMemberPublicKey do
  @moduledoc """
  Set of valid public keys for multisig committee members.
  """

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "MultisigMemberPublicKey",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "scheme",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_ENUM,
          type_name: ".sui.rpc.v2beta2.SignatureScheme",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "scheme",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "public_key",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 1,
          json_name: "publicKey",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "zklogin",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.ZkLoginPublicIdentifier",
          default_value: nil,
          options: nil,
          oneof_index: 2,
          json_name: "zklogin",
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
          name: "_scheme",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_public_key",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_zklogin",
          options: nil,
          __unknown_fields__: []
        }
      ],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :scheme, 1, proto3_optional: true, type: Sui.Rpc.V2beta2.SignatureScheme, enum: true
  field :public_key, 2, proto3_optional: true, type: :bytes, json_name: "publicKey"
  field :zklogin, 3, proto3_optional: true, type: Sui.Rpc.V2beta2.ZkLoginPublicIdentifier
end
