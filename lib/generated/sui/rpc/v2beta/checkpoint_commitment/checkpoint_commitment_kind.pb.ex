defmodule Sui.Rpc.V2beta.CheckpointCommitment.CheckpointCommitmentKind do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.EnumDescriptorProto{
      name: "CheckpointCommitmentKind",
      value: [
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "CHECKPOINT_COMMITMENT_KIND_UNKNOWN",
          number: 0,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "ECMH_LIVE_OBJECT_SET",
          number: 1,
          options: nil,
          __unknown_fields__: []
        }
      ],
      options: nil,
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :CHECKPOINT_COMMITMENT_KIND_UNKNOWN, 0
  field :ECMH_LIVE_OBJECT_SET, 1
end
