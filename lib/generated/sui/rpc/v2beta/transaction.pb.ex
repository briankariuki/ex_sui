defmodule Sui.Rpc.V2beta.Transaction do
  @moduledoc """
  A transaction.
  """

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "Transaction",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "bcs",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta.Bcs",
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
          name: "kind",
          extendee: nil,
          number: 4,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta.TransactionKind",
          default_value: nil,
          options: nil,
          oneof_index: 3,
          json_name: "kind",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "sender",
          extendee: nil,
          number: 5,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 4,
          json_name: "sender",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "gas_payment",
          extendee: nil,
          number: 6,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta.GasPayment",
          default_value: nil,
          options: nil,
          oneof_index: 5,
          json_name: "gasPayment",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "expiration",
          extendee: nil,
          number: 7,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta.TransactionExpiration",
          default_value: nil,
          options: nil,
          oneof_index: 6,
          json_name: "expiration",
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
          name: "_kind",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_sender",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_gas_payment",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_expiration",
          options: nil,
          __unknown_fields__: []
        }
      ],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :bcs, 1, proto3_optional: true, type: Sui.Rpc.V2beta.Bcs
  field :digest, 2, proto3_optional: true, type: :string
  field :version, 3, proto3_optional: true, type: :int32
  field :kind, 4, proto3_optional: true, type: Sui.Rpc.V2beta.TransactionKind
  field :sender, 5, proto3_optional: true, type: :string

  field :gas_payment, 6,
    proto3_optional: true,
    type: Sui.Rpc.V2beta.GasPayment,
    json_name: "gasPayment"

  field :expiration, 7, proto3_optional: true, type: Sui.Rpc.V2beta.TransactionExpiration
end
