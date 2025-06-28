defmodule Sui.Rpc.V2alpha.AbilitySet do
  @moduledoc """
  A set of abilities for a type parameter
  """

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "AbilitySet",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "abilities",
          extendee: nil,
          number: 1,
          label: :LABEL_REPEATED,
          type: :TYPE_ENUM,
          type_name: ".sui.rpc.v2alpha.Ability",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "abilities",
          proto3_optional: nil,
          __unknown_fields__: []
        }
      ],
      nested_type: [],
      enum_type: [],
      extension_range: [],
      extension: [],
      options: nil,
      oneof_decl: [],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :abilities, 1, repeated: true, type: Sui.Rpc.V2alpha.Ability, enum: true
end
