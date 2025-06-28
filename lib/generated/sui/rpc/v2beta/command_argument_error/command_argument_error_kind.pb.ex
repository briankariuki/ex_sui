defmodule Sui.Rpc.V2beta.CommandArgumentError.CommandArgumentErrorKind do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.EnumDescriptorProto{
      name: "CommandArgumentErrorKind",
      value: [
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "COMMAND_ARGUMENT_ERROR_KIND_UNKNOWN",
          number: 0,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "TYPE_MISMATCH",
          number: 1,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "INVALID_BCS_BYTES",
          number: 2,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "INVALID_USAGE_OF_PURE_ARGUMENT",
          number: 3,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "INVALID_ARGUMENT_TO_PRIVATE_ENTRY_FUNCTION",
          number: 4,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "INDEX_OUT_OF_BOUNDS",
          number: 5,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "SECONDARY_INDEX_OUT_OF_BOUNDS",
          number: 6,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "INVALID_RESULT_ARITY",
          number: 7,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "INVALID_GAS_COIN_USAGE",
          number: 8,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "INVALID_VALUE_USAGE",
          number: 9,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "INVALID_OBJECT_BY_VALUE",
          number: 10,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "INVALID_OBJECT_BY_MUT_REF",
          number: 11,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "SHARED_OBJECT_OPERATION_NOT_ALLOWED",
          number: 12,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "INVALID_ARGUMENT_ARITY",
          number: 13,
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

  field :COMMAND_ARGUMENT_ERROR_KIND_UNKNOWN, 0
  field :TYPE_MISMATCH, 1
  field :INVALID_BCS_BYTES, 2
  field :INVALID_USAGE_OF_PURE_ARGUMENT, 3
  field :INVALID_ARGUMENT_TO_PRIVATE_ENTRY_FUNCTION, 4
  field :INDEX_OUT_OF_BOUNDS, 5
  field :SECONDARY_INDEX_OUT_OF_BOUNDS, 6
  field :INVALID_RESULT_ARITY, 7
  field :INVALID_GAS_COIN_USAGE, 8
  field :INVALID_VALUE_USAGE, 9
  field :INVALID_OBJECT_BY_VALUE, 10
  field :INVALID_OBJECT_BY_MUT_REF, 11
  field :SHARED_OBJECT_OPERATION_NOT_ALLOWED, 12
  field :INVALID_ARGUMENT_ARITY, 13
end
