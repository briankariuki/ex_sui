defmodule Sui.Rpc.V2beta2.Epoch do
  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "Epoch",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "epoch",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "epoch",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "committee",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.ValidatorCommittee",
          default_value: nil,
          options: nil,
          oneof_index: 1,
          json_name: "committee",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "system_state",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.SystemState",
          default_value: nil,
          options: nil,
          oneof_index: 2,
          json_name: "systemState",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "first_checkpoint",
          extendee: nil,
          number: 4,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 3,
          json_name: "firstCheckpoint",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "last_checkpoint",
          extendee: nil,
          number: 5,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 4,
          json_name: "lastCheckpoint",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "start",
          extendee: nil,
          number: 6,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".google.protobuf.Timestamp",
          default_value: nil,
          options: nil,
          oneof_index: 5,
          json_name: "start",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "end",
          extendee: nil,
          number: 7,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".google.protobuf.Timestamp",
          default_value: nil,
          options: nil,
          oneof_index: 6,
          json_name: "end",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "reference_gas_price",
          extendee: nil,
          number: 8,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 7,
          json_name: "referenceGasPrice",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "protocol_config",
          extendee: nil,
          number: 9,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.ProtocolConfig",
          default_value: nil,
          options: nil,
          oneof_index: 8,
          json_name: "protocolConfig",
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
          name: "_epoch",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_committee",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_system_state",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_first_checkpoint",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_last_checkpoint",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_start",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{name: "_end", options: nil, __unknown_fields__: []},
        %Google.Protobuf.OneofDescriptorProto{
          name: "_reference_gas_price",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_protocol_config",
          options: nil,
          __unknown_fields__: []
        }
      ],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :epoch, 1, proto3_optional: true, type: :uint64
  field :committee, 2, proto3_optional: true, type: Sui.Rpc.V2beta2.ValidatorCommittee

  field :system_state, 3,
    proto3_optional: true,
    type: Sui.Rpc.V2beta2.SystemState,
    json_name: "systemState"

  field :first_checkpoint, 4, proto3_optional: true, type: :uint64, json_name: "firstCheckpoint"
  field :last_checkpoint, 5, proto3_optional: true, type: :uint64, json_name: "lastCheckpoint"
  field :start, 6, proto3_optional: true, type: Google.Protobuf.Timestamp
  field :end, 7, proto3_optional: true, type: Google.Protobuf.Timestamp

  field :reference_gas_price, 8,
    proto3_optional: true,
    type: :uint64,
    json_name: "referenceGasPrice"

  field :protocol_config, 9,
    proto3_optional: true,
    type: Sui.Rpc.V2beta2.ProtocolConfig,
    json_name: "protocolConfig"
end
