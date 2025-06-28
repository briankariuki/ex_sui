defmodule Sui.Rpc.V2beta2.MakeMoveVector do
  @moduledoc """
  Command to build a Move vector out of a set of individual elements.
  """

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "MakeMoveVector",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "element_type",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "elementType",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "elements",
          extendee: nil,
          number: 2,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.Argument",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "elements",
          proto3_optional: nil,
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
          name: "_element_type",
          options: nil,
          __unknown_fields__: []
        }
      ],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :element_type, 1, proto3_optional: true, type: :string, json_name: "elementType"
  field :elements, 2, repeated: true, type: Sui.Rpc.V2beta2.Argument
end
