defmodule Sui.Rpc.V2beta2.StakeSubsidy do
  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "StakeSubsidy",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "balance",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "balance",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "distribution_counter",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 1,
          json_name: "distributionCounter",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "current_distribution_amount",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 2,
          json_name: "currentDistributionAmount",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "stake_subsidy_period_length",
          extendee: nil,
          number: 4,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 3,
          json_name: "stakeSubsidyPeriodLength",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "stake_subsidy_decrease_rate",
          extendee: nil,
          number: 5,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT32,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 4,
          json_name: "stakeSubsidyDecreaseRate",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "extra_fields",
          extendee: nil,
          number: 6,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.MoveTable",
          default_value: nil,
          options: nil,
          oneof_index: 5,
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
          name: "_balance",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_distribution_counter",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_current_distribution_amount",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_stake_subsidy_period_length",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_stake_subsidy_decrease_rate",
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

  field :balance, 1, proto3_optional: true, type: :uint64

  field :distribution_counter, 2,
    proto3_optional: true,
    type: :uint64,
    json_name: "distributionCounter"

  field :current_distribution_amount, 3,
    proto3_optional: true,
    type: :uint64,
    json_name: "currentDistributionAmount"

  field :stake_subsidy_period_length, 4,
    proto3_optional: true,
    type: :uint64,
    json_name: "stakeSubsidyPeriodLength"

  field :stake_subsidy_decrease_rate, 5,
    proto3_optional: true,
    type: :uint32,
    json_name: "stakeSubsidyDecreaseRate"

  field :extra_fields, 6,
    proto3_optional: true,
    type: Sui.Rpc.V2beta2.MoveTable,
    json_name: "extraFields"
end
