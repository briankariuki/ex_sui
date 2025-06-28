defmodule Sui.Rpc.V2beta2.StorageFund do
  @moduledoc """
  Struct representing the onchain storage fund.
  """

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "StorageFund",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "total_object_storage_rebates",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "totalObjectStorageRebates",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "non_refundable_balance",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 1,
          json_name: "nonRefundableBalance",
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
          name: "_total_object_storage_rebates",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_non_refundable_balance",
          options: nil,
          __unknown_fields__: []
        }
      ],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :total_object_storage_rebates, 1,
    proto3_optional: true,
    type: :uint64,
    json_name: "totalObjectStorageRebates"

  field :non_refundable_balance, 2,
    proto3_optional: true,
    type: :uint64,
    json_name: "nonRefundableBalance"
end
