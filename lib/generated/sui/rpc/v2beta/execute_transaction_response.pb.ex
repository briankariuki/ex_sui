defmodule Sui.Rpc.V2beta.ExecuteTransactionResponse do
  @moduledoc """
  Response message for `NodeService.ExecuteTransaction`.
  """

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "ExecuteTransactionResponse",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "finality",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta.TransactionFinality",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "finality",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "transaction",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta.ExecutedTransaction",
          default_value: nil,
          options: nil,
          oneof_index: 1,
          json_name: "transaction",
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
          name: "_finality",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_transaction",
          options: nil,
          __unknown_fields__: []
        }
      ],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :finality, 1, proto3_optional: true, type: Sui.Rpc.V2beta.TransactionFinality
  field :transaction, 2, proto3_optional: true, type: Sui.Rpc.V2beta.ExecutedTransaction
end
