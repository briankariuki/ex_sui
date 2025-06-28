defmodule Sui.Rpc.V2beta2.MultisigAggregatedSignature do
  @moduledoc """
  Aggregated signature from members of a multisig committee.
  """

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "MultisigAggregatedSignature",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "signatures",
          extendee: nil,
          number: 1,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.MultisigMemberSignature",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "signatures",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "bitmap",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT32,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "bitmap",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "legacy_bitmap",
          extendee: nil,
          number: 3,
          label: :LABEL_REPEATED,
          type: :TYPE_UINT32,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "legacyBitmap",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "committee",
          extendee: nil,
          number: 4,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.MultisigCommittee",
          default_value: nil,
          options: nil,
          oneof_index: 1,
          json_name: "committee",
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
          name: "_bitmap",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_committee",
          options: nil,
          __unknown_fields__: []
        }
      ],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :signatures, 1, repeated: true, type: Sui.Rpc.V2beta2.MultisigMemberSignature
  field :bitmap, 2, proto3_optional: true, type: :uint32
  field :legacy_bitmap, 3, repeated: true, type: :uint32, json_name: "legacyBitmap"
  field :committee, 4, proto3_optional: true, type: Sui.Rpc.V2beta2.MultisigCommittee
end
