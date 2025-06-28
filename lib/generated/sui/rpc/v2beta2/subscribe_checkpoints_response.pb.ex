defmodule Sui.Rpc.V2beta2.SubscribeCheckpointsResponse do
  @moduledoc """
  Response message for SubscriptionService.SubscribeCheckpoints
  """

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "SubscribeCheckpointsResponse",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "cursor",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "cursor",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "checkpoint",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.Checkpoint",
          default_value: nil,
          options: nil,
          oneof_index: 1,
          json_name: "checkpoint",
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
          name: "_cursor",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_checkpoint",
          options: nil,
          __unknown_fields__: []
        }
      ],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :cursor, 1, proto3_optional: true, type: :uint64
  field :checkpoint, 2, proto3_optional: true, type: Sui.Rpc.V2beta2.Checkpoint
end
