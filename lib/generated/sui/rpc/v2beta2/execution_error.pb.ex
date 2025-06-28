defmodule Sui.Rpc.V2beta2.ExecutionError do
  @moduledoc """
  An error that can occur during the execution of a transaction.
  """

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "ExecutionError",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "description",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 1,
          json_name: "description",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "command",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 2,
          json_name: "command",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "kind",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_ENUM,
          type_name: ".sui.rpc.v2beta2.ExecutionError.ExecutionErrorKind",
          default_value: nil,
          options: nil,
          oneof_index: 3,
          json_name: "kind",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "abort",
          extendee: nil,
          number: 4,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.MoveAbort",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "abort",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "size_error",
          extendee: nil,
          number: 5,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.SizeError",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "sizeError",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "command_argument_error",
          extendee: nil,
          number: 6,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.CommandArgumentError",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "commandArgumentError",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "type_argument_error",
          extendee: nil,
          number: 7,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.TypeArgumentError",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "typeArgumentError",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "package_upgrade_error",
          extendee: nil,
          number: 8,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.PackageUpgradeError",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "packageUpgradeError",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "index_error",
          extendee: nil,
          number: 9,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.IndexError",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "indexError",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "object_id",
          extendee: nil,
          number: 10,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "objectId",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "coin_deny_list_error",
          extendee: nil,
          number: 11,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.CoinDenyListError",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "coinDenyListError",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "congested_objects",
          extendee: nil,
          number: 12,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.CongestedObjects",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "congestedObjects",
          proto3_optional: nil,
          __unknown_fields__: []
        }
      ],
      nested_type: [],
      enum_type: [
        %Google.Protobuf.EnumDescriptorProto{
          name: "ExecutionErrorKind",
          value: [
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "EXECUTION_ERROR_KIND_UNKNOWN",
              number: 0,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "INSUFFICIENT_GAS",
              number: 1,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "INVALID_GAS_OBJECT",
              number: 2,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "INVARIANT_VIOLATION",
              number: 3,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "FEATURE_NOT_YET_SUPPORTED",
              number: 4,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "OBJECT_TOO_BIG",
              number: 5,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "PACKAGE_TOO_BIG",
              number: 6,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "CIRCULAR_OBJECT_OWNERSHIP",
              number: 7,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "INSUFFICIENT_COIN_BALANCE",
              number: 8,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "COIN_BALANCE_OVERFLOW",
              number: 9,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "PUBLISH_ERROR_NON_ZERO_ADDRESS",
              number: 10,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "SUI_MOVE_VERIFICATION_ERROR",
              number: 11,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "MOVE_PRIMITIVE_RUNTIME_ERROR",
              number: 12,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "MOVE_ABORT",
              number: 13,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "VM_VERIFICATION_OR_DESERIALIZATION_ERROR",
              number: 14,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "VM_INVARIANT_VIOLATION",
              number: 15,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "FUNCTION_NOT_FOUND",
              number: 16,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "ARITY_MISMATCH",
              number: 17,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "TYPE_ARITY_MISMATCH",
              number: 18,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "NON_ENTRY_FUNCTION_INVOKED",
              number: 19,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "COMMAND_ARGUMENT_ERROR",
              number: 20,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "TYPE_ARGUMENT_ERROR",
              number: 21,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "UNUSED_VALUE_WITHOUT_DROP",
              number: 22,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "INVALID_PUBLIC_FUNCTION_RETURN_TYPE",
              number: 23,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "INVALID_TRANSFER_OBJECT",
              number: 24,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "EFFECTS_TOO_LARGE",
              number: 25,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "PUBLISH_UPGRADE_MISSING_DEPENDENCY",
              number: 26,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "PUBLISH_UPGRADE_DEPENDENCY_DOWNGRADE",
              number: 27,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "PACKAGE_UPGRADE_ERROR",
              number: 28,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "WRITTEN_OBJECTS_TOO_LARGE",
              number: 29,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "CERTIFICATE_DENIED",
              number: 30,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "SUI_MOVE_VERIFICATION_TIMEDOUT",
              number: 31,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "SHARED_OBJECT_OPERATION_NOT_ALLOWED",
              number: 32,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "INPUT_OBJECT_DELETED",
              number: 33,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "EXECUTION_CANCELED_DUE_TO_SHARED_OBJECT_CONGESTION",
              number: 34,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "ADDRESS_DENIED_FOR_COIN",
              number: 35,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "COIN_TYPE_GLOBAL_PAUSE",
              number: 36,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "EXECUTION_CANCELED_DUE_TO_RANDOMNESS_UNAVAILABLE",
              number: 37,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "MOVE_VECTOR_ELEM_TOO_BIG",
              number: 38,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "MOVE_RAW_VALUE_TOO_BIG",
              number: 39,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "INVALID_LINKAGE",
              number: 40,
              options: nil,
              __unknown_fields__: []
            }
          ],
          options: nil,
          reserved_range: [],
          reserved_name: [],
          __unknown_fields__: []
        }
      ],
      extension_range: [],
      extension: [],
      options: nil,
      oneof_decl: [
        %Google.Protobuf.OneofDescriptorProto{
          name: "error_details",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_description",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_command",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{name: "_kind", options: nil, __unknown_fields__: []}
      ],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  oneof :error_details, 0

  field :description, 1, proto3_optional: true, type: :string
  field :command, 2, proto3_optional: true, type: :uint64

  field :kind, 3,
    proto3_optional: true,
    type: Sui.Rpc.V2beta2.ExecutionError.ExecutionErrorKind,
    enum: true

  field :abort, 4, type: Sui.Rpc.V2beta2.MoveAbort, oneof: 0
  field :size_error, 5, type: Sui.Rpc.V2beta2.SizeError, json_name: "sizeError", oneof: 0

  field :command_argument_error, 6,
    type: Sui.Rpc.V2beta2.CommandArgumentError,
    json_name: "commandArgumentError",
    oneof: 0

  field :type_argument_error, 7,
    type: Sui.Rpc.V2beta2.TypeArgumentError,
    json_name: "typeArgumentError",
    oneof: 0

  field :package_upgrade_error, 8,
    type: Sui.Rpc.V2beta2.PackageUpgradeError,
    json_name: "packageUpgradeError",
    oneof: 0

  field :index_error, 9, type: Sui.Rpc.V2beta2.IndexError, json_name: "indexError", oneof: 0
  field :object_id, 10, type: :string, json_name: "objectId", oneof: 0

  field :coin_deny_list_error, 11,
    type: Sui.Rpc.V2beta2.CoinDenyListError,
    json_name: "coinDenyListError",
    oneof: 0

  field :congested_objects, 12,
    type: Sui.Rpc.V2beta2.CongestedObjects,
    json_name: "congestedObjects",
    oneof: 0
end
