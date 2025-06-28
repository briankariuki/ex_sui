defmodule Sui.Rpc.V2beta2.GetCoinInfoResponse do
  @moduledoc """
  Response message for `NodeService.GetCoinInfo`.
  """

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "GetCoinInfoResponse",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "coin_type",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "coinType",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "metadata",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.CoinMetadata",
          default_value: nil,
          options: nil,
          oneof_index: 1,
          json_name: "metadata",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "treasury",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.CoinTreasury",
          default_value: nil,
          options: nil,
          oneof_index: 2,
          json_name: "treasury",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "regulated_metadata",
          extendee: nil,
          number: 4,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.RegulatedCoinMetadata",
          default_value: nil,
          options: nil,
          oneof_index: 3,
          json_name: "regulatedMetadata",
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
          name: "_coin_type",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_metadata",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_treasury",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_regulated_metadata",
          options: nil,
          __unknown_fields__: []
        }
      ],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :coin_type, 1, proto3_optional: true, type: :string, json_name: "coinType"
  field :metadata, 2, proto3_optional: true, type: Sui.Rpc.V2beta2.CoinMetadata
  field :treasury, 3, proto3_optional: true, type: Sui.Rpc.V2beta2.CoinTreasury

  field :regulated_metadata, 4,
    proto3_optional: true,
    type: Sui.Rpc.V2beta2.RegulatedCoinMetadata,
    json_name: "regulatedMetadata"
end
