defmodule Sui.Rpc.V2beta.MultisigMember do
  @moduledoc """
  A member in a multisig committee.
  """

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "MultisigMember",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "public_key",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta.MultisigMemberPublicKey",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "publicKey",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "weight",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT32,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 1,
          json_name: "weight",
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
          name: "_public_key",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_weight",
          options: nil,
          __unknown_fields__: []
        }
      ],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :public_key, 1,
    proto3_optional: true,
    type: Sui.Rpc.V2beta.MultisigMemberPublicKey,
    json_name: "publicKey"

  field :weight, 2, proto3_optional: true, type: :uint32
end
