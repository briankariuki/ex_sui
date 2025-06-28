defmodule Sui.Rpc.V2beta2.Command do
  @moduledoc """
  A single command in a programmable transaction.
  """

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "Command",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "move_call",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.MoveCall",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "moveCall",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "transfer_objects",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.TransferObjects",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "transferObjects",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "split_coins",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.SplitCoins",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "splitCoins",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "merge_coins",
          extendee: nil,
          number: 4,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.MergeCoins",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "mergeCoins",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "publish",
          extendee: nil,
          number: 5,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.Publish",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "publish",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "make_move_vector",
          extendee: nil,
          number: 6,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.MakeMoveVector",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "makeMoveVector",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "upgrade",
          extendee: nil,
          number: 7,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.Upgrade",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "upgrade",
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
          name: "command",
          options: nil,
          __unknown_fields__: []
        }
      ],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  oneof :command, 0

  field :move_call, 1, type: Sui.Rpc.V2beta2.MoveCall, json_name: "moveCall", oneof: 0

  field :transfer_objects, 2,
    type: Sui.Rpc.V2beta2.TransferObjects,
    json_name: "transferObjects",
    oneof: 0

  field :split_coins, 3, type: Sui.Rpc.V2beta2.SplitCoins, json_name: "splitCoins", oneof: 0
  field :merge_coins, 4, type: Sui.Rpc.V2beta2.MergeCoins, json_name: "mergeCoins", oneof: 0
  field :publish, 5, type: Sui.Rpc.V2beta2.Publish, oneof: 0

  field :make_move_vector, 6,
    type: Sui.Rpc.V2beta2.MakeMoveVector,
    json_name: "makeMoveVector",
    oneof: 0

  field :upgrade, 7, type: Sui.Rpc.V2beta2.Upgrade, oneof: 0
end
