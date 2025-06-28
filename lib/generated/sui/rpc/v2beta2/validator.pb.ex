defmodule Sui.Rpc.V2beta2.Validator do
  @moduledoc """
  Definition of a Validator in the system contracts

  Note: fields of ValidatorMetadata are flattened into this type
  """

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "Validator",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "name",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "name",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "address",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 1,
          json_name: "address",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "description",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 2,
          json_name: "description",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "image_url",
          extendee: nil,
          number: 4,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 3,
          json_name: "imageUrl",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "project_url",
          extendee: nil,
          number: 5,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 4,
          json_name: "projectUrl",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "protocol_public_key",
          extendee: nil,
          number: 7,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 5,
          json_name: "protocolPublicKey",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "proof_of_possession",
          extendee: nil,
          number: 8,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 6,
          json_name: "proofOfPossession",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "network_public_key",
          extendee: nil,
          number: 10,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 7,
          json_name: "networkPublicKey",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "worker_public_key",
          extendee: nil,
          number: 12,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 8,
          json_name: "workerPublicKey",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "network_address",
          extendee: nil,
          number: 13,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 9,
          json_name: "networkAddress",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "p2p_address",
          extendee: nil,
          number: 14,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 10,
          json_name: "p2pAddress",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "primary_address",
          extendee: nil,
          number: 15,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 11,
          json_name: "primaryAddress",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "worker_address",
          extendee: nil,
          number: 16,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 12,
          json_name: "workerAddress",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "next_epoch_protocol_public_key",
          extendee: nil,
          number: 18,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 13,
          json_name: "nextEpochProtocolPublicKey",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "next_epoch_proof_of_possession",
          extendee: nil,
          number: 19,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 14,
          json_name: "nextEpochProofOfPossession",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "next_epoch_network_public_key",
          extendee: nil,
          number: 21,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 15,
          json_name: "nextEpochNetworkPublicKey",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "next_epoch_worker_public_key",
          extendee: nil,
          number: 23,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 16,
          json_name: "nextEpochWorkerPublicKey",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "next_epoch_network_address",
          extendee: nil,
          number: 24,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 17,
          json_name: "nextEpochNetworkAddress",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "next_epoch_p2p_address",
          extendee: nil,
          number: 25,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 18,
          json_name: "nextEpochP2pAddress",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "next_epoch_primary_address",
          extendee: nil,
          number: 26,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 19,
          json_name: "nextEpochPrimaryAddress",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "next_epoch_worker_address",
          extendee: nil,
          number: 27,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 20,
          json_name: "nextEpochWorkerAddress",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "metadata_extra_fields",
          extendee: nil,
          number: 28,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.MoveTable",
          default_value: nil,
          options: nil,
          oneof_index: 21,
          json_name: "metadataExtraFields",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "voting_power",
          extendee: nil,
          number: 29,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 22,
          json_name: "votingPower",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "operation_cap_id",
          extendee: nil,
          number: 30,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 23,
          json_name: "operationCapId",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "gas_price",
          extendee: nil,
          number: 31,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 24,
          json_name: "gasPrice",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "staking_pool",
          extendee: nil,
          number: 32,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.StakingPool",
          default_value: nil,
          options: nil,
          oneof_index: 25,
          json_name: "stakingPool",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "commission_rate",
          extendee: nil,
          number: 33,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 26,
          json_name: "commissionRate",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "next_epoch_stake",
          extendee: nil,
          number: 34,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 27,
          json_name: "nextEpochStake",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "next_epoch_gas_price",
          extendee: nil,
          number: 35,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 28,
          json_name: "nextEpochGasPrice",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "next_epoch_commission_rate",
          extendee: nil,
          number: 36,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 29,
          json_name: "nextEpochCommissionRate",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "extra_fields",
          extendee: nil,
          number: 37,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.MoveTable",
          default_value: nil,
          options: nil,
          oneof_index: 30,
          json_name: "extraFields",
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
          name: "_name",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_address",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_description",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_image_url",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_project_url",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_protocol_public_key",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_proof_of_possession",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_network_public_key",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_worker_public_key",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_network_address",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_p2p_address",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_primary_address",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_worker_address",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_next_epoch_protocol_public_key",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_next_epoch_proof_of_possession",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_next_epoch_network_public_key",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_next_epoch_worker_public_key",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_next_epoch_network_address",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_next_epoch_p2p_address",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_next_epoch_primary_address",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_next_epoch_worker_address",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_metadata_extra_fields",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_voting_power",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_operation_cap_id",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_gas_price",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_staking_pool",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_commission_rate",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_next_epoch_stake",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_next_epoch_gas_price",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_next_epoch_commission_rate",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_extra_fields",
          options: nil,
          __unknown_fields__: []
        }
      ],
      reserved_range: [
        %Google.Protobuf.DescriptorProto.ReservedRange{start: 6, end: 7, __unknown_fields__: []},
        %Google.Protobuf.DescriptorProto.ReservedRange{start: 9, end: 10, __unknown_fields__: []},
        %Google.Protobuf.DescriptorProto.ReservedRange{
          start: 11,
          end: 12,
          __unknown_fields__: []
        },
        %Google.Protobuf.DescriptorProto.ReservedRange{
          start: 17,
          end: 18,
          __unknown_fields__: []
        },
        %Google.Protobuf.DescriptorProto.ReservedRange{
          start: 20,
          end: 21,
          __unknown_fields__: []
        },
        %Google.Protobuf.DescriptorProto.ReservedRange{start: 22, end: 23, __unknown_fields__: []}
      ],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :name, 1, proto3_optional: true, type: :string
  field :address, 2, proto3_optional: true, type: :string
  field :description, 3, proto3_optional: true, type: :string
  field :image_url, 4, proto3_optional: true, type: :string, json_name: "imageUrl"
  field :project_url, 5, proto3_optional: true, type: :string, json_name: "projectUrl"

  field :protocol_public_key, 7,
    proto3_optional: true,
    type: :bytes,
    json_name: "protocolPublicKey"

  field :proof_of_possession, 8,
    proto3_optional: true,
    type: :bytes,
    json_name: "proofOfPossession"

  field :network_public_key, 10,
    proto3_optional: true,
    type: :bytes,
    json_name: "networkPublicKey"

  field :worker_public_key, 12, proto3_optional: true, type: :bytes, json_name: "workerPublicKey"
  field :network_address, 13, proto3_optional: true, type: :string, json_name: "networkAddress"
  field :p2p_address, 14, proto3_optional: true, type: :string, json_name: "p2pAddress"
  field :primary_address, 15, proto3_optional: true, type: :string, json_name: "primaryAddress"
  field :worker_address, 16, proto3_optional: true, type: :string, json_name: "workerAddress"

  field :next_epoch_protocol_public_key, 18,
    proto3_optional: true,
    type: :bytes,
    json_name: "nextEpochProtocolPublicKey"

  field :next_epoch_proof_of_possession, 19,
    proto3_optional: true,
    type: :bytes,
    json_name: "nextEpochProofOfPossession"

  field :next_epoch_network_public_key, 21,
    proto3_optional: true,
    type: :bytes,
    json_name: "nextEpochNetworkPublicKey"

  field :next_epoch_worker_public_key, 23,
    proto3_optional: true,
    type: :bytes,
    json_name: "nextEpochWorkerPublicKey"

  field :next_epoch_network_address, 24,
    proto3_optional: true,
    type: :string,
    json_name: "nextEpochNetworkAddress"

  field :next_epoch_p2p_address, 25,
    proto3_optional: true,
    type: :string,
    json_name: "nextEpochP2pAddress"

  field :next_epoch_primary_address, 26,
    proto3_optional: true,
    type: :string,
    json_name: "nextEpochPrimaryAddress"

  field :next_epoch_worker_address, 27,
    proto3_optional: true,
    type: :string,
    json_name: "nextEpochWorkerAddress"

  field :metadata_extra_fields, 28,
    proto3_optional: true,
    type: Sui.Rpc.V2beta2.MoveTable,
    json_name: "metadataExtraFields"

  field :voting_power, 29, proto3_optional: true, type: :uint64, json_name: "votingPower"
  field :operation_cap_id, 30, proto3_optional: true, type: :string, json_name: "operationCapId"
  field :gas_price, 31, proto3_optional: true, type: :uint64, json_name: "gasPrice"

  field :staking_pool, 32,
    proto3_optional: true,
    type: Sui.Rpc.V2beta2.StakingPool,
    json_name: "stakingPool"

  field :commission_rate, 33, proto3_optional: true, type: :uint64, json_name: "commissionRate"
  field :next_epoch_stake, 34, proto3_optional: true, type: :uint64, json_name: "nextEpochStake"

  field :next_epoch_gas_price, 35,
    proto3_optional: true,
    type: :uint64,
    json_name: "nextEpochGasPrice"

  field :next_epoch_commission_rate, 36,
    proto3_optional: true,
    type: :uint64,
    json_name: "nextEpochCommissionRate"

  field :extra_fields, 37,
    proto3_optional: true,
    type: Sui.Rpc.V2beta2.MoveTable,
    json_name: "extraFields"
end
