defmodule Sui.Rpc.V2beta2.CircomG2 do
  @moduledoc """
  A G2 point.
  """

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "CircomG2",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "e00",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "e00",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "e01",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 1,
          json_name: "e01",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "e10",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 2,
          json_name: "e10",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "e11",
          extendee: nil,
          number: 4,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 3,
          json_name: "e11",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "e20",
          extendee: nil,
          number: 5,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 4,
          json_name: "e20",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "e21",
          extendee: nil,
          number: 6,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 5,
          json_name: "e21",
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
        %Google.Protobuf.OneofDescriptorProto{name: "_e00", options: nil, __unknown_fields__: []},
        %Google.Protobuf.OneofDescriptorProto{name: "_e01", options: nil, __unknown_fields__: []},
        %Google.Protobuf.OneofDescriptorProto{name: "_e10", options: nil, __unknown_fields__: []},
        %Google.Protobuf.OneofDescriptorProto{name: "_e11", options: nil, __unknown_fields__: []},
        %Google.Protobuf.OneofDescriptorProto{name: "_e20", options: nil, __unknown_fields__: []},
        %Google.Protobuf.OneofDescriptorProto{name: "_e21", options: nil, __unknown_fields__: []}
      ],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :e00, 1, proto3_optional: true, type: :string
  field :e01, 2, proto3_optional: true, type: :string
  field :e10, 3, proto3_optional: true, type: :string
  field :e11, 4, proto3_optional: true, type: :string
  field :e20, 5, proto3_optional: true, type: :string
  field :e21, 6, proto3_optional: true, type: :string
end
