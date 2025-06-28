defmodule Sui.Rpc.V2beta.EndOfEpochData do
  @moduledoc """
  Data, which when included in a `CheckpointSummary`, signals the end of an `Epoch`.
  """

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "EndOfEpochData",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "next_epoch_committee",
          extendee: nil,
          number: 1,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta.ValidatorCommitteeMember",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "nextEpochCommittee",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "next_epoch_protocol_version",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "nextEpochProtocolVersion",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "epoch_commitments",
          extendee: nil,
          number: 3,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta.CheckpointCommitment",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "epochCommitments",
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
          name: "_next_epoch_protocol_version",
          options: nil,
          __unknown_fields__: []
        }
      ],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :next_epoch_committee, 1,
    repeated: true,
    type: Sui.Rpc.V2beta.ValidatorCommitteeMember,
    json_name: "nextEpochCommittee"

  field :next_epoch_protocol_version, 2,
    proto3_optional: true,
    type: :uint64,
    json_name: "nextEpochProtocolVersion"

  field :epoch_commitments, 3,
    repeated: true,
    type: Sui.Rpc.V2beta.CheckpointCommitment,
    json_name: "epochCommitments"
end
