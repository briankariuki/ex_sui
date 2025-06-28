defmodule Sui.Rpc.V2beta2.CommandOutput do
  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "CommandOutput",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "argument",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.Argument",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "argument",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "value",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.Bcs",
          default_value: nil,
          options: nil,
          oneof_index: 1,
          json_name: "value",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "json",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".google.protobuf.Value",
          default_value: nil,
          options: nil,
          oneof_index: 2,
          json_name: "json",
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
          name: "_argument",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_value",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{name: "_json", options: nil, __unknown_fields__: []}
      ],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :argument, 1, proto3_optional: true, type: Sui.Rpc.V2beta2.Argument
  field :value, 2, proto3_optional: true, type: Sui.Rpc.V2beta2.Bcs
  field :json, 3, proto3_optional: true, type: Google.Protobuf.Value
end
