defmodule Sui.Rpc.V2beta2.ChangeEpoch do
  @moduledoc """
  System transaction used to change the epoch.
  """

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "ChangeEpoch",
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
          name: "protocol_version",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 1,
          json_name: "protocolVersion",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "storage_charge",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 2,
          json_name: "storageCharge",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "computation_charge",
          extendee: nil,
          number: 4,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 3,
          json_name: "computationCharge",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "storage_rebate",
          extendee: nil,
          number: 5,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 4,
          json_name: "storageRebate",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "non_refundable_storage_fee",
          extendee: nil,
          number: 6,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 5,
          json_name: "nonRefundableStorageFee",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "epoch_start_timestamp",
          extendee: nil,
          number: 7,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".google.protobuf.Timestamp",
          default_value: nil,
          options: nil,
          oneof_index: 6,
          json_name: "epochStartTimestamp",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "system_packages",
          extendee: nil,
          number: 8,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.SystemPackage",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "systemPackages",
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
          name: "_storage_charge",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_computation_charge",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_storage_rebate",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_non_refundable_storage_fee",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_epoch_start_timestamp",
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
  field :protocol_version, 2, proto3_optional: true, type: :uint64, json_name: "protocolVersion"
  field :storage_charge, 3, proto3_optional: true, type: :uint64, json_name: "storageCharge"

  field :computation_charge, 4,
    proto3_optional: true,
    type: :uint64,
    json_name: "computationCharge"

  field :storage_rebate, 5, proto3_optional: true, type: :uint64, json_name: "storageRebate"

  field :non_refundable_storage_fee, 6,
    proto3_optional: true,
    type: :uint64,
    json_name: "nonRefundableStorageFee"

  field :epoch_start_timestamp, 7,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "epochStartTimestamp"

  field :system_packages, 8,
    repeated: true,
    type: Sui.Rpc.V2beta2.SystemPackage,
    json_name: "systemPackages"
end
