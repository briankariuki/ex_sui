defmodule Sui.Rpc.V2beta2.ValidatorSet do
  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "ValidatorSet",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "total_stake",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "totalStake",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "active_validators",
          extendee: nil,
          number: 2,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.Validator",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "activeValidators",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "pending_active_validators",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.MoveTable",
          default_value: nil,
          options: nil,
          oneof_index: 1,
          json_name: "pendingActiveValidators",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "pending_removals",
          extendee: nil,
          number: 4,
          label: :LABEL_REPEATED,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "pendingRemovals",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "staking_pool_mappings",
          extendee: nil,
          number: 5,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.MoveTable",
          default_value: nil,
          options: nil,
          oneof_index: 2,
          json_name: "stakingPoolMappings",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "inactive_validators",
          extendee: nil,
          number: 6,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.MoveTable",
          default_value: nil,
          options: nil,
          oneof_index: 3,
          json_name: "inactiveValidators",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "validator_candidates",
          extendee: nil,
          number: 7,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.MoveTable",
          default_value: nil,
          options: nil,
          oneof_index: 4,
          json_name: "validatorCandidates",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "at_risk_validators",
          extendee: nil,
          number: 8,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.ValidatorSet.AtRiskValidatorsEntry",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "atRiskValidators",
          proto3_optional: nil,
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
          oneof_index: 5,
          json_name: "extraFields",
          proto3_optional: true,
          __unknown_fields__: []
        }
      ],
      nested_type: [
        %Google.Protobuf.DescriptorProto{
          name: "AtRiskValidatorsEntry",
          field: [
            %Google.Protobuf.FieldDescriptorProto{
              name: "key",
              extendee: nil,
              number: 1,
              label: :LABEL_OPTIONAL,
              type: :TYPE_STRING,
              type_name: nil,
              default_value: nil,
              options: nil,
              oneof_index: nil,
              json_name: "key",
              proto3_optional: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.FieldDescriptorProto{
              name: "value",
              extendee: nil,
              number: 2,
              label: :LABEL_OPTIONAL,
              type: :TYPE_UINT64,
              type_name: nil,
              default_value: nil,
              options: nil,
              oneof_index: nil,
              json_name: "value",
              proto3_optional: nil,
              __unknown_fields__: []
            }
          ],
          nested_type: [],
          enum_type: [],
          extension_range: [],
          extension: [],
          options: %Google.Protobuf.MessageOptions{
            message_set_wire_format: false,
            no_standard_descriptor_accessor: false,
            deprecated: false,
            map_entry: true,
            deprecated_legacy_json_field_conflicts: nil,
            features: nil,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: []
          },
          oneof_decl: [],
          reserved_range: [],
          reserved_name: [],
          __unknown_fields__: []
        }
      ],
      enum_type: [],
      extension_range: [],
      extension: [],
      options: nil,
      oneof_decl: [
        %Google.Protobuf.OneofDescriptorProto{
          name: "_total_stake",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_pending_active_validators",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_staking_pool_mappings",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_inactive_validators",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_validator_candidates",
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

  field :total_stake, 1, proto3_optional: true, type: :uint64, json_name: "totalStake"

  field :active_validators, 2,
    repeated: true,
    type: Sui.Rpc.V2beta2.Validator,
    json_name: "activeValidators"

  field :pending_active_validators, 3,
    proto3_optional: true,
    type: Sui.Rpc.V2beta2.MoveTable,
    json_name: "pendingActiveValidators"

  field :pending_removals, 4, repeated: true, type: :uint64, json_name: "pendingRemovals"

  field :staking_pool_mappings, 5,
    proto3_optional: true,
    type: Sui.Rpc.V2beta2.MoveTable,
    json_name: "stakingPoolMappings"

  field :inactive_validators, 6,
    proto3_optional: true,
    type: Sui.Rpc.V2beta2.MoveTable,
    json_name: "inactiveValidators"

  field :validator_candidates, 7,
    proto3_optional: true,
    type: Sui.Rpc.V2beta2.MoveTable,
    json_name: "validatorCandidates"

  field :at_risk_validators, 8,
    repeated: true,
    type: Sui.Rpc.V2beta2.ValidatorSet.AtRiskValidatorsEntry,
    json_name: "atRiskValidators",
    map: true

  field :extra_fields, 9,
    proto3_optional: true,
    type: Sui.Rpc.V2beta2.MoveTable,
    json_name: "extraFields"
end
