defmodule Sui.Rpc.V2beta2.DatatypeDescriptor do
  @moduledoc """
  Describes a Move Datatype.
  """

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "DatatypeDescriptor",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "type_name",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "typeName",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "defining_id",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 1,
          json_name: "definingId",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "module",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 2,
          json_name: "module",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "name",
          extendee: nil,
          number: 4,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 3,
          json_name: "name",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "abilities",
          extendee: nil,
          number: 5,
          label: :LABEL_REPEATED,
          type: :TYPE_ENUM,
          type_name: ".sui.rpc.v2beta2.Ability",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "abilities",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "type_parameters",
          extendee: nil,
          number: 6,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.TypeParameter",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "typeParameters",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "kind",
          extendee: nil,
          number: 7,
          label: :LABEL_OPTIONAL,
          type: :TYPE_ENUM,
          type_name: ".sui.rpc.v2beta2.DatatypeDescriptor.DatatypeKind",
          default_value: nil,
          options: nil,
          oneof_index: 4,
          json_name: "kind",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "fields",
          extendee: nil,
          number: 8,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.FieldDescriptor",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "fields",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "variants",
          extendee: nil,
          number: 9,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.VariantDescriptor",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "variants",
          proto3_optional: nil,
          __unknown_fields__: []
        }
      ],
      nested_type: [],
      enum_type: [
        %Google.Protobuf.EnumDescriptorProto{
          name: "DatatypeKind",
          value: [
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "DATATYPE_KIND_UNKNOWN",
              number: 0,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "STRUCT",
              number: 1,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "ENUM",
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
          name: "_type_name",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_defining_id",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_module",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_name",
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

  field :type_name, 1, proto3_optional: true, type: :string, json_name: "typeName"
  field :defining_id, 2, proto3_optional: true, type: :string, json_name: "definingId"
  field :module, 3, proto3_optional: true, type: :string
  field :name, 4, proto3_optional: true, type: :string
  field :abilities, 5, repeated: true, type: Sui.Rpc.V2beta2.Ability, enum: true

  field :type_parameters, 6,
    repeated: true,
    type: Sui.Rpc.V2beta2.TypeParameter,
    json_name: "typeParameters"

  field :kind, 7,
    proto3_optional: true,
    type: Sui.Rpc.V2beta2.DatatypeDescriptor.DatatypeKind,
    enum: true

  field :fields, 8, repeated: true, type: Sui.Rpc.V2beta2.FieldDescriptor
  field :variants, 9, repeated: true, type: Sui.Rpc.V2beta2.VariantDescriptor
end
