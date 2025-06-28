defmodule Sui.Rpc.V2beta.MergeCoins do
  @moduledoc """
  Command to merge multiple coins of the same type into a single coin.
  """

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "MergeCoins",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "coin",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta.Argument",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "coin",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "coins_to_merge",
          extendee: nil,
          number: 2,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta.Argument",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "coinsToMerge",
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
        %Google.Protobuf.OneofDescriptorProto{name: "_coin", options: nil, __unknown_fields__: []}
      ],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :coin, 1, proto3_optional: true, type: Sui.Rpc.V2beta.Argument

  field :coins_to_merge, 2,
    repeated: true,
    type: Sui.Rpc.V2beta.Argument,
    json_name: "coinsToMerge"
end
