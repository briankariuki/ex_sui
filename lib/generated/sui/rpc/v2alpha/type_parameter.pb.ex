defmodule Sui.Rpc.V2alpha.TypeParameter do
  @moduledoc """
  A generic type parameter used in the declaration of a struct or enum.
  """

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "TypeParameter",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "constraints",
          extendee: nil,
          number: 1,
          label: :LABEL_REPEATED,
          type: :TYPE_ENUM,
          type_name: ".sui.rpc.v2alpha.Ability",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "constraints",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "is_phantom",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BOOL,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "isPhantom",
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
          name: "_is_phantom",
          options: nil,
          __unknown_fields__: []
        }
      ],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :constraints, 1, repeated: true, type: Sui.Rpc.V2alpha.Ability, enum: true
  field :is_phantom, 2, proto3_optional: true, type: :bool, json_name: "isPhantom"
end
