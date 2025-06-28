defmodule Sui.Rpc.V2alpha.FunctionDescriptor do
  @moduledoc """
  Descriptor of a Move function
  """

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "FunctionDescriptor",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "name",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "name",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "visibility",
          extendee: nil,
          number: 5,
          label: :LABEL_OPTIONAL,
          type: :TYPE_ENUM,
          type_name: ".sui.rpc.v2alpha.FunctionDescriptor.Visibility",
          default_value: nil,
          options: nil,
          oneof_index: 1,
          json_name: "visibility",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "is_entry",
          extendee: nil,
          number: 6,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BOOL,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 2,
          json_name: "isEntry",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "type_parameters",
          extendee: nil,
          number: 7,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2alpha.AbilitySet",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "typeParameters",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "parameters",
          extendee: nil,
          number: 8,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2alpha.OpenSignature",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "parameters",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "returns",
          extendee: nil,
          number: 9,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2alpha.OpenSignature",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "returns",
          proto3_optional: nil,
          __unknown_fields__: []
        }
      ],
      nested_type: [],
      enum_type: [
        %Google.Protobuf.EnumDescriptorProto{
          name: "Visibility",
          value: [
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "VISIBILITY_UNKNOWN",
              number: 0,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "PRIVATE",
              number: 1,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "PUBLIC",
              number: 2,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "FRIEND",
              number: 3,
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
          name: "_name",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_visibility",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_is_entry",
          options: nil,
          __unknown_fields__: []
        }
      ],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :name, 1, proto3_optional: true, type: :string

  field :visibility, 5,
    proto3_optional: true,
    type: Sui.Rpc.V2alpha.FunctionDescriptor.Visibility,
    enum: true

  field :is_entry, 6, proto3_optional: true, type: :bool, json_name: "isEntry"

  field :type_parameters, 7,
    repeated: true,
    type: Sui.Rpc.V2alpha.AbilitySet,
    json_name: "typeParameters"

  field :parameters, 8, repeated: true, type: Sui.Rpc.V2alpha.OpenSignature
  field :returns, 9, repeated: true, type: Sui.Rpc.V2alpha.OpenSignature
end
