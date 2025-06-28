defmodule Sui.Rpc.V2beta2.ExecutionError.ExecutionErrorKind do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
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
  end

  field :EXECUTION_ERROR_KIND_UNKNOWN, 0
  field :INSUFFICIENT_GAS, 1
  field :INVALID_GAS_OBJECT, 2
  field :INVARIANT_VIOLATION, 3
  field :FEATURE_NOT_YET_SUPPORTED, 4
  field :OBJECT_TOO_BIG, 5
  field :PACKAGE_TOO_BIG, 6
  field :CIRCULAR_OBJECT_OWNERSHIP, 7
  field :INSUFFICIENT_COIN_BALANCE, 8
  field :COIN_BALANCE_OVERFLOW, 9
  field :PUBLISH_ERROR_NON_ZERO_ADDRESS, 10
  field :SUI_MOVE_VERIFICATION_ERROR, 11
  field :MOVE_PRIMITIVE_RUNTIME_ERROR, 12
  field :MOVE_ABORT, 13
  field :VM_VERIFICATION_OR_DESERIALIZATION_ERROR, 14
  field :VM_INVARIANT_VIOLATION, 15
  field :FUNCTION_NOT_FOUND, 16
  field :ARITY_MISMATCH, 17
  field :TYPE_ARITY_MISMATCH, 18
  field :NON_ENTRY_FUNCTION_INVOKED, 19
  field :COMMAND_ARGUMENT_ERROR, 20
  field :TYPE_ARGUMENT_ERROR, 21
  field :UNUSED_VALUE_WITHOUT_DROP, 22
  field :INVALID_PUBLIC_FUNCTION_RETURN_TYPE, 23
  field :INVALID_TRANSFER_OBJECT, 24
  field :EFFECTS_TOO_LARGE, 25
  field :PUBLISH_UPGRADE_MISSING_DEPENDENCY, 26
  field :PUBLISH_UPGRADE_DEPENDENCY_DOWNGRADE, 27
  field :PACKAGE_UPGRADE_ERROR, 28
  field :WRITTEN_OBJECTS_TOO_LARGE, 29
  field :CERTIFICATE_DENIED, 30
  field :SUI_MOVE_VERIFICATION_TIMEDOUT, 31
  field :SHARED_OBJECT_OPERATION_NOT_ALLOWED, 32
  field :INPUT_OBJECT_DELETED, 33
  field :EXECUTION_CANCELED_DUE_TO_SHARED_OBJECT_CONGESTION, 34
  field :ADDRESS_DENIED_FOR_COIN, 35
  field :COIN_TYPE_GLOBAL_PAUSE, 36
  field :EXECUTION_CANCELED_DUE_TO_RANDOMNESS_UNAVAILABLE, 37
  field :MOVE_VECTOR_ELEM_TOO_BIG, 38
  field :MOVE_RAW_VALUE_TOO_BIG, 39
  field :INVALID_LINKAGE, 40
end
