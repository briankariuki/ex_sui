defmodule Sui.Rpc.V2beta2.TransactionEffects do
  @moduledoc """
  The effects of executing a transaction.
  """

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "TransactionEffects",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "bcs",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.Bcs",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "bcs",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "digest",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 1,
          json_name: "digest",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "version",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_INT32,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 2,
          json_name: "version",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "status",
          extendee: nil,
          number: 4,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.ExecutionStatus",
          default_value: nil,
          options: nil,
          oneof_index: 3,
          json_name: "status",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "epoch",
          extendee: nil,
          number: 5,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 4,
          json_name: "epoch",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "gas_used",
          extendee: nil,
          number: 6,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.GasCostSummary",
          default_value: nil,
          options: nil,
          oneof_index: 5,
          json_name: "gasUsed",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "transaction_digest",
          extendee: nil,
          number: 7,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 6,
          json_name: "transactionDigest",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "gas_object",
          extendee: nil,
          number: 8,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.ChangedObject",
          default_value: nil,
          options: nil,
          oneof_index: 7,
          json_name: "gasObject",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "events_digest",
          extendee: nil,
          number: 9,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 8,
          json_name: "eventsDigest",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "dependencies",
          extendee: nil,
          number: 10,
          label: :LABEL_REPEATED,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "dependencies",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "lamport_version",
          extendee: nil,
          number: 11,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 9,
          json_name: "lamportVersion",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "changed_objects",
          extendee: nil,
          number: 12,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.ChangedObject",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "changedObjects",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "unchanged_shared_objects",
          extendee: nil,
          number: 13,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.UnchangedSharedObject",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "unchangedSharedObjects",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "auxiliary_data_digest",
          extendee: nil,
          number: 14,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 10,
          json_name: "auxiliaryDataDigest",
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
        %Google.Protobuf.OneofDescriptorProto{name: "_bcs", options: nil, __unknown_fields__: []},
        %Google.Protobuf.OneofDescriptorProto{
          name: "_digest",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_version",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_status",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_epoch",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_gas_used",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_transaction_digest",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_gas_object",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_events_digest",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_lamport_version",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_auxiliary_data_digest",
          options: nil,
          __unknown_fields__: []
        }
      ],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :bcs, 1, proto3_optional: true, type: Sui.Rpc.V2beta2.Bcs
  field :digest, 2, proto3_optional: true, type: :string
  field :version, 3, proto3_optional: true, type: :int32
  field :status, 4, proto3_optional: true, type: Sui.Rpc.V2beta2.ExecutionStatus
  field :epoch, 5, proto3_optional: true, type: :uint64

  field :gas_used, 6,
    proto3_optional: true,
    type: Sui.Rpc.V2beta2.GasCostSummary,
    json_name: "gasUsed"

  field :transaction_digest, 7,
    proto3_optional: true,
    type: :string,
    json_name: "transactionDigest"

  field :gas_object, 8,
    proto3_optional: true,
    type: Sui.Rpc.V2beta2.ChangedObject,
    json_name: "gasObject"

  field :events_digest, 9, proto3_optional: true, type: :string, json_name: "eventsDigest"
  field :dependencies, 10, repeated: true, type: :string
  field :lamport_version, 11, proto3_optional: true, type: :uint64, json_name: "lamportVersion"

  field :changed_objects, 12,
    repeated: true,
    type: Sui.Rpc.V2beta2.ChangedObject,
    json_name: "changedObjects"

  field :unchanged_shared_objects, 13,
    repeated: true,
    type: Sui.Rpc.V2beta2.UnchangedSharedObject,
    json_name: "unchangedSharedObjects"

  field :auxiliary_data_digest, 14,
    proto3_optional: true,
    type: :string,
    json_name: "auxiliaryDataDigest"
end
