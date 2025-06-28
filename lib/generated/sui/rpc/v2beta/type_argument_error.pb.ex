defmodule Sui.Rpc.V2beta.TypeArgumentError do
  @moduledoc """
  Type argument error.
  """

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "TypeArgumentError",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "type_argument",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT32,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "typeArgument",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "kind",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_ENUM,
          type_name: ".sui.rpc.v2beta.TypeArgumentError.TypeArgumentErrorKind",
          default_value: nil,
          options: nil,
          oneof_index: 1,
          json_name: "kind",
          proto3_optional: true,
          __unknown_fields__: []
        }
      ],
      nested_type: [],
      enum_type: [
        %Google.Protobuf.EnumDescriptorProto{
          name: "TypeArgumentErrorKind",
          value: [
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "TYPE_ARGUMENT_ERROR_KIND_UNKNOWN",
              number: 0,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "TYPE_NOT_FOUND",
              number: 1,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "CONSTRAINT_NOT_SATISFIED",
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
      ],
      extension_range: [],
      extension: [],
      options: nil,
      oneof_decl: [
        %Google.Protobuf.OneofDescriptorProto{
          name: "_type_argument",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{name: "_kind", options: nil, __unknown_fields__: []}
      ],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :type_argument, 1, proto3_optional: true, type: :uint32, json_name: "typeArgument"

  field :kind, 2,
    proto3_optional: true,
    type: Sui.Rpc.V2beta.TypeArgumentError.TypeArgumentErrorKind,
    enum: true
end
