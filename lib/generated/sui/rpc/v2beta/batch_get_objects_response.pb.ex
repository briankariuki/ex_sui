defmodule Sui.Rpc.V2beta.BatchGetObjectsResponse do
  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "BatchGetObjectsResponse",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "objects",
          extendee: nil,
          number: 1,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta.Object",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "objects",
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

  field :objects, 1, repeated: true, type: Sui.Rpc.V2beta.Object
end
