defmodule Sui.Rpc.V2beta2.ExecutedTransaction do
  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "ExecutedTransaction",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "digest",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "digest",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "transaction",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.Transaction",
          default_value: nil,
          options: nil,
          oneof_index: 1,
          json_name: "transaction",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "signatures",
          extendee: nil,
          number: 3,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.UserSignature",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "signatures",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "effects",
          extendee: nil,
          number: 4,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.TransactionEffects",
          default_value: nil,
          options: nil,
          oneof_index: 2,
          json_name: "effects",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "events",
          extendee: nil,
          number: 5,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.TransactionEvents",
          default_value: nil,
          options: nil,
          oneof_index: 3,
          json_name: "events",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "checkpoint",
          extendee: nil,
          number: 6,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 4,
          json_name: "checkpoint",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "timestamp",
          extendee: nil,
          number: 7,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".google.protobuf.Timestamp",
          default_value: nil,
          options: nil,
          oneof_index: 5,
          json_name: "timestamp",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "balance_changes",
          extendee: nil,
          number: 8,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.BalanceChange",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "balanceChanges",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "input_objects",
          extendee: nil,
          number: 10,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.Object",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "inputObjects",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "output_objects",
          extendee: nil,
          number: 11,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.Object",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "outputObjects",
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
          name: "_digest",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_transaction",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_effects",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_events",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_checkpoint",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_timestamp",
          options: nil,
          __unknown_fields__: []
        }
      ],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :digest, 1, proto3_optional: true, type: :string
  field :transaction, 2, proto3_optional: true, type: Sui.Rpc.V2beta2.Transaction
  field :signatures, 3, repeated: true, type: Sui.Rpc.V2beta2.UserSignature
  field :effects, 4, proto3_optional: true, type: Sui.Rpc.V2beta2.TransactionEffects
  field :events, 5, proto3_optional: true, type: Sui.Rpc.V2beta2.TransactionEvents
  field :checkpoint, 6, proto3_optional: true, type: :uint64
  field :timestamp, 7, proto3_optional: true, type: Google.Protobuf.Timestamp

  field :balance_changes, 8,
    repeated: true,
    type: Sui.Rpc.V2beta2.BalanceChange,
    json_name: "balanceChanges"

  field :input_objects, 10,
    repeated: true,
    type: Sui.Rpc.V2beta2.Object,
    json_name: "inputObjects"

  field :output_objects, 11,
    repeated: true,
    type: Sui.Rpc.V2beta2.Object,
    json_name: "outputObjects"
end
