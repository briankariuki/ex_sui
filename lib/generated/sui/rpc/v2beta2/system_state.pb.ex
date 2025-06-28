defmodule Sui.Rpc.V2beta2.SystemState do
  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "SystemState",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "version",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "version",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "epoch",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 1,
          json_name: "epoch",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "protocol_version",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 2,
          json_name: "protocolVersion",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "validators",
          extendee: nil,
          number: 4,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.ValidatorSet",
          default_value: nil,
          options: nil,
          oneof_index: 3,
          json_name: "validators",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "storage_fund",
          extendee: nil,
          number: 5,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.StorageFund",
          default_value: nil,
          options: nil,
          oneof_index: 4,
          json_name: "storageFund",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "parameters",
          extendee: nil,
          number: 6,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.SystemParameters",
          default_value: nil,
          options: nil,
          oneof_index: 5,
          json_name: "parameters",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "reference_gas_price",
          extendee: nil,
          number: 7,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 6,
          json_name: "referenceGasPrice",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "validator_report_records",
          extendee: nil,
          number: 8,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.ValidatorReportRecord",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "validatorReportRecords",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "stake_subsidy",
          extendee: nil,
          number: 9,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.StakeSubsidy",
          default_value: nil,
          options: nil,
          oneof_index: 7,
          json_name: "stakeSubsidy",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "safe_mode",
          extendee: nil,
          number: 10,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BOOL,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 8,
          json_name: "safeMode",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "safe_mode_storage_rewards",
          extendee: nil,
          number: 11,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 9,
          json_name: "safeModeStorageRewards",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "safe_mode_computation_rewards",
          extendee: nil,
          number: 12,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 10,
          json_name: "safeModeComputationRewards",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "safe_mode_storage_rebates",
          extendee: nil,
          number: 13,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 11,
          json_name: "safeModeStorageRebates",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "safe_mode_non_refundable_storage_fee",
          extendee: nil,
          number: 14,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 12,
          json_name: "safeModeNonRefundableStorageFee",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "epoch_start_timestamp_ms",
          extendee: nil,
          number: 15,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 13,
          json_name: "epochStartTimestampMs",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "extra_fields",
          extendee: nil,
          number: 16,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.MoveTable",
          default_value: nil,
          options: nil,
          oneof_index: 14,
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
          name: "_version",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_epoch",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_protocol_version",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_validators",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_storage_fund",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_parameters",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_reference_gas_price",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_stake_subsidy",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_safe_mode",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_safe_mode_storage_rewards",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_safe_mode_computation_rewards",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_safe_mode_storage_rebates",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_safe_mode_non_refundable_storage_fee",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_epoch_start_timestamp_ms",
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

  field :version, 1, proto3_optional: true, type: :uint64
  field :epoch, 2, proto3_optional: true, type: :uint64
  field :protocol_version, 3, proto3_optional: true, type: :uint64, json_name: "protocolVersion"
  field :validators, 4, proto3_optional: true, type: Sui.Rpc.V2beta2.ValidatorSet

  field :storage_fund, 5,
    proto3_optional: true,
    type: Sui.Rpc.V2beta2.StorageFund,
    json_name: "storageFund"

  field :parameters, 6, proto3_optional: true, type: Sui.Rpc.V2beta2.SystemParameters

  field :reference_gas_price, 7,
    proto3_optional: true,
    type: :uint64,
    json_name: "referenceGasPrice"

  field :validator_report_records, 8,
    repeated: true,
    type: Sui.Rpc.V2beta2.ValidatorReportRecord,
    json_name: "validatorReportRecords"

  field :stake_subsidy, 9,
    proto3_optional: true,
    type: Sui.Rpc.V2beta2.StakeSubsidy,
    json_name: "stakeSubsidy"

  field :safe_mode, 10, proto3_optional: true, type: :bool, json_name: "safeMode"

  field :safe_mode_storage_rewards, 11,
    proto3_optional: true,
    type: :uint64,
    json_name: "safeModeStorageRewards"

  field :safe_mode_computation_rewards, 12,
    proto3_optional: true,
    type: :uint64,
    json_name: "safeModeComputationRewards"

  field :safe_mode_storage_rebates, 13,
    proto3_optional: true,
    type: :uint64,
    json_name: "safeModeStorageRebates"

  field :safe_mode_non_refundable_storage_fee, 14,
    proto3_optional: true,
    type: :uint64,
    json_name: "safeModeNonRefundableStorageFee"

  field :epoch_start_timestamp_ms, 15,
    proto3_optional: true,
    type: :uint64,
    json_name: "epochStartTimestampMs"

  field :extra_fields, 16,
    proto3_optional: true,
    type: Sui.Rpc.V2beta2.MoveTable,
    json_name: "extraFields"
end
