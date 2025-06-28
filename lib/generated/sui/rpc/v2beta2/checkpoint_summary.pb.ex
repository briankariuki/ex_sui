defmodule Sui.Rpc.V2beta2.CheckpointSummary do
  @moduledoc """
  A header for a checkpoint on the Sui blockchain.

  On the Sui network, checkpoints define the history of the blockchain. They are quite similar to
  the concept of blocks used by other blockchains like Bitcoin or Ethereum. The Sui blockchain,
  however, forms checkpoints after transaction execution has already happened to provide a
  certified history of the chain, instead of being formed before execution.

  Checkpoints commit to a variety of state, including but not limited to:
  - The hash of the previous checkpoint.
  - The set of transaction digests, their corresponding effects digests, as well as the set of
  user signatures that authorized its execution.
  - The objects produced by a transaction.
  - The set of live objects that make up the current state of the chain.
  - On epoch transitions, the next validator committee.

  `CheckpointSummary`s themselves don't directly include all of the previous information but they
  are the top-level type by which all the information is committed to transitively via cryptographic
  hashes included in the summary. `CheckpointSummary`s are signed and certified by a quorum of
  the validator committee in a given epoch to allow verification of the chain's state.
  """

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "CheckpointSummary",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "bcs",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.Bcs",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "bcs",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "digest",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 1,
          json_name: "digest",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "epoch",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 2,
          json_name: "epoch",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "sequence_number",
          extendee: nil,
          number: 4,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 3,
          json_name: "sequenceNumber",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "total_network_transactions",
          extendee: nil,
          number: 5,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 4,
          json_name: "totalNetworkTransactions",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "content_digest",
          extendee: nil,
          number: 6,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 5,
          json_name: "contentDigest",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "previous_digest",
          extendee: nil,
          number: 7,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 6,
          json_name: "previousDigest",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "epoch_rolling_gas_cost_summary",
          extendee: nil,
          number: 8,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.GasCostSummary",
          default_value: nil,
          options: nil,
          oneof_index: 7,
          json_name: "epochRollingGasCostSummary",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "timestamp",
          extendee: nil,
          number: 9,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".google.protobuf.Timestamp",
          default_value: nil,
          options: nil,
          oneof_index: 8,
          json_name: "timestamp",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "commitments",
          extendee: nil,
          number: 10,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.CheckpointCommitment",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "commitments",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "end_of_epoch_data",
          extendee: nil,
          number: 11,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.EndOfEpochData",
          default_value: nil,
          options: nil,
          oneof_index: 9,
          json_name: "endOfEpochData",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "version_specific_data",
          extendee: nil,
          number: 12,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 10,
          json_name: "versionSpecificData",
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
        %Google.Protobuf.OneofDescriptorProto{name: "_bcs", options: nil, __unknown_fields__: []},
        %Google.Protobuf.OneofDescriptorProto{
          name: "_digest",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_epoch",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_sequence_number",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_total_network_transactions",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_content_digest",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_previous_digest",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_epoch_rolling_gas_cost_summary",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_timestamp",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_end_of_epoch_data",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_version_specific_data",
          options: nil,
          __unknown_fields__: []
        }
      ],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :bcs, 1, proto3_optional: true, type: Sui.Rpc.V2beta2.Bcs
  field :digest, 2, proto3_optional: true, type: :string
  field :epoch, 3, proto3_optional: true, type: :uint64
  field :sequence_number, 4, proto3_optional: true, type: :uint64, json_name: "sequenceNumber"

  field :total_network_transactions, 5,
    proto3_optional: true,
    type: :uint64,
    json_name: "totalNetworkTransactions"

  field :content_digest, 6, proto3_optional: true, type: :string, json_name: "contentDigest"
  field :previous_digest, 7, proto3_optional: true, type: :string, json_name: "previousDigest"

  field :epoch_rolling_gas_cost_summary, 8,
    proto3_optional: true,
    type: Sui.Rpc.V2beta2.GasCostSummary,
    json_name: "epochRollingGasCostSummary"

  field :timestamp, 9, proto3_optional: true, type: Google.Protobuf.Timestamp
  field :commitments, 10, repeated: true, type: Sui.Rpc.V2beta2.CheckpointCommitment

  field :end_of_epoch_data, 11,
    proto3_optional: true,
    type: Sui.Rpc.V2beta2.EndOfEpochData,
    json_name: "endOfEpochData"

  field :version_specific_data, 12,
    proto3_optional: true,
    type: :bytes,
    json_name: "versionSpecificData"
end
