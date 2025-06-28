defmodule Sui.Rpc.V2beta.TransactionKind do
  @moduledoc """
  Transaction type.
  """

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "TransactionKind",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "programmable_transaction",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta.ProgrammableTransaction",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "programmableTransaction",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "change_epoch",
          extendee: nil,
          number: 100,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta.ChangeEpoch",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "changeEpoch",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "genesis",
          extendee: nil,
          number: 101,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta.GenesisTransaction",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "genesis",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "consensus_commit_prologue_v1",
          extendee: nil,
          number: 102,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta.ConsensusCommitPrologue",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "consensusCommitPrologueV1",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "authenticator_state_update",
          extendee: nil,
          number: 103,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta.AuthenticatorStateUpdate",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "authenticatorStateUpdate",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "end_of_epoch",
          extendee: nil,
          number: 104,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta.EndOfEpochTransaction",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "endOfEpoch",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "randomness_state_update",
          extendee: nil,
          number: 105,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta.RandomnessStateUpdate",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "randomnessStateUpdate",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "consensus_commit_prologue_v2",
          extendee: nil,
          number: 106,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta.ConsensusCommitPrologue",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "consensusCommitPrologueV2",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "consensus_commit_prologue_v3",
          extendee: nil,
          number: 107,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta.ConsensusCommitPrologue",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "consensusCommitPrologueV3",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "consensus_commit_prologue_v4",
          extendee: nil,
          number: 108,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta.ConsensusCommitPrologue",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "consensusCommitPrologueV4",
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
        %Google.Protobuf.OneofDescriptorProto{name: "kind", options: nil, __unknown_fields__: []}
      ],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  oneof :kind, 0

  field :programmable_transaction, 2,
    type: Sui.Rpc.V2beta.ProgrammableTransaction,
    json_name: "programmableTransaction",
    oneof: 0

  field :change_epoch, 100, type: Sui.Rpc.V2beta.ChangeEpoch, json_name: "changeEpoch", oneof: 0
  field :genesis, 101, type: Sui.Rpc.V2beta.GenesisTransaction, oneof: 0

  field :consensus_commit_prologue_v1, 102,
    type: Sui.Rpc.V2beta.ConsensusCommitPrologue,
    json_name: "consensusCommitPrologueV1",
    oneof: 0

  field :authenticator_state_update, 103,
    type: Sui.Rpc.V2beta.AuthenticatorStateUpdate,
    json_name: "authenticatorStateUpdate",
    oneof: 0

  field :end_of_epoch, 104,
    type: Sui.Rpc.V2beta.EndOfEpochTransaction,
    json_name: "endOfEpoch",
    oneof: 0

  field :randomness_state_update, 105,
    type: Sui.Rpc.V2beta.RandomnessStateUpdate,
    json_name: "randomnessStateUpdate",
    oneof: 0

  field :consensus_commit_prologue_v2, 106,
    type: Sui.Rpc.V2beta.ConsensusCommitPrologue,
    json_name: "consensusCommitPrologueV2",
    oneof: 0

  field :consensus_commit_prologue_v3, 107,
    type: Sui.Rpc.V2beta.ConsensusCommitPrologue,
    json_name: "consensusCommitPrologueV3",
    oneof: 0

  field :consensus_commit_prologue_v4, 108,
    type: Sui.Rpc.V2beta.ConsensusCommitPrologue,
    json_name: "consensusCommitPrologueV4",
    oneof: 0
end
