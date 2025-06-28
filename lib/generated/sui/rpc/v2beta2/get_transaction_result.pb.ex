defmodule Sui.Rpc.V2beta2.GetTransactionResult do
  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "GetTransactionResult",
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
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "error",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".google.rpc.Status",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "error",
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
          name: "result",
          options: nil,
          __unknown_fields__: []
        }
      ],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  oneof :result, 0

  field :transaction, 1, type: Sui.Rpc.V2beta2.ExecutedTransaction, oneof: 0
  field :error, 2, type: Google.Rpc.Status, oneof: 0
end
