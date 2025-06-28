defmodule Sui.Rpc.V2beta.TransactionFinality do
  @moduledoc """
  Indicates the finality of the executed transaction.
  """

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "TransactionFinality",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "certified",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta.ValidatorAggregatedSignature",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "certified",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "checkpointed",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "checkpointed",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "quorum_executed",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".google.protobuf.Empty",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "quorumExecuted",
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
          name: "finality",
          options: nil,
          __unknown_fields__: []
        }
      ],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  oneof :finality, 0

  field :certified, 1, type: Sui.Rpc.V2beta.ValidatorAggregatedSignature, oneof: 0
  field :checkpointed, 2, type: :uint64, oneof: 0
  field :quorum_executed, 3, type: Google.Protobuf.Empty, json_name: "quorumExecuted", oneof: 0
end
