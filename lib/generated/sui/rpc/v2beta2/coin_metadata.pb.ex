defmodule Sui.Rpc.V2beta2.CoinMetadata do
  @moduledoc """
  Metadata for a coin type
  """

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "CoinMetadata",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "id",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "id",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "decimals",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT32,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 1,
          json_name: "decimals",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "name",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 2,
          json_name: "name",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "symbol",
          extendee: nil,
          number: 4,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 3,
          json_name: "symbol",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "description",
          extendee: nil,
          number: 5,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 4,
          json_name: "description",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "icon_url",
          extendee: nil,
          number: 6,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 5,
          json_name: "iconUrl",
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
        %Google.Protobuf.OneofDescriptorProto{name: "_id", options: nil, __unknown_fields__: []},
        %Google.Protobuf.OneofDescriptorProto{
          name: "_decimals",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_name",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_symbol",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_description",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_icon_url",
          options: nil,
          __unknown_fields__: []
        }
      ],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :id, 1, proto3_optional: true, type: :string
  field :decimals, 2, proto3_optional: true, type: :uint32
  field :name, 3, proto3_optional: true, type: :string
  field :symbol, 4, proto3_optional: true, type: :string
  field :description, 5, proto3_optional: true, type: :string
  field :icon_url, 6, proto3_optional: true, type: :string, json_name: "iconUrl"
end
