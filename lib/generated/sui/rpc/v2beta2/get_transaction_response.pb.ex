defmodule Sui.Rpc.V2beta2.GetTransactionResponse do
  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "GetTransactionResponse",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "transaction",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.ExecutedTransaction",
          default_value: nil,
          options: nil,
          oneof_index: 0,
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

  field :transaction, 1, proto3_optional: true, type: Sui.Rpc.V2beta2.ExecutedTransaction
end
