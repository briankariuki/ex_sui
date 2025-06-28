defmodule Sui.Rpc.V2beta2.SystemParameters do
  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "SystemParameters",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "epoch_duration_ms",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "epochDurationMs",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "stake_subsidy_start_epoch",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 1,
          json_name: "stakeSubsidyStartEpoch",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "min_validator_count",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 2,
          json_name: "minValidatorCount",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "max_validator_count",
          extendee: nil,
          number: 4,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 3,
          json_name: "maxValidatorCount",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "min_validator_joining_stake",
          extendee: nil,
          number: 5,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 4,
          json_name: "minValidatorJoiningStake",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "validator_low_stake_threshold",
          extendee: nil,
          number: 6,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 5,
          json_name: "validatorLowStakeThreshold",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "validator_very_low_stake_threshold",
          extendee: nil,
          number: 7,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 6,
          json_name: "validatorVeryLowStakeThreshold",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "validator_low_stake_grace_period",
          extendee: nil,
          number: 8,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 7,
          json_name: "validatorLowStakeGracePeriod",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "extra_fields",
          extendee: nil,
          number: 9,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.MoveTable",
          default_value: nil,
          options: nil,
          oneof_index: 8,
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
          name: "_epoch_duration_ms",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_stake_subsidy_start_epoch",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_min_validator_count",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_max_validator_count",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_min_validator_joining_stake",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_validator_low_stake_threshold",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_validator_very_low_stake_threshold",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_validator_low_stake_grace_period",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_extra_fields",
          options: nil,
          __unknown_fields__: []
        }
      ],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :epoch_duration_ms, 1, proto3_optional: true, type: :uint64, json_name: "epochDurationMs"

  field :stake_subsidy_start_epoch, 2,
    proto3_optional: true,
    type: :uint64,
    json_name: "stakeSubsidyStartEpoch"

  field :min_validator_count, 3,
    proto3_optional: true,
    type: :uint64,
    json_name: "minValidatorCount"

  field :max_validator_count, 4,
    proto3_optional: true,
    type: :uint64,
    json_name: "maxValidatorCount"

  field :min_validator_joining_stake, 5,
    proto3_optional: true,
    type: :uint64,
    json_name: "minValidatorJoiningStake"

  field :validator_low_stake_threshold, 6,
    proto3_optional: true,
    type: :uint64,
    json_name: "validatorLowStakeThreshold"

  field :validator_very_low_stake_threshold, 7,
    proto3_optional: true,
    type: :uint64,
    json_name: "validatorVeryLowStakeThreshold"

  field :validator_low_stake_grace_period, 8,
    proto3_optional: true,
    type: :uint64,
    json_name: "validatorLowStakeGracePeriod"

  field :extra_fields, 9,
    proto3_optional: true,
    type: Sui.Rpc.V2beta2.MoveTable,
    json_name: "extraFields"
end
