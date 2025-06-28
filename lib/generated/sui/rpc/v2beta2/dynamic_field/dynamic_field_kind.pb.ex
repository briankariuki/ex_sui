defmodule Sui.Rpc.V2beta2.DynamicField.DynamicFieldKind do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.EnumDescriptorProto{
      name: "DynamicFieldKind",
      value: [
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "DYNAMIC_FIELD_KIND_UNKNOWN",
          number: 0,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "FIELD",
          number: 1,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "OBJECT",
          number: 2,
          options: nil,
          __unknown_fields__: []
        }
      ],
      options: nil,
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :DYNAMIC_FIELD_KIND_UNKNOWN, 0
  field :FIELD, 1
  field :OBJECT, 2
end
