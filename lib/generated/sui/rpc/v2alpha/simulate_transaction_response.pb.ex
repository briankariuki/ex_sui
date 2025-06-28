defmodule Sui.Rpc.V2alpha.SimulateTransactionResponse do
  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "SimulateTransactionResponse",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "transaction",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta.ExecutedTransaction",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "transaction",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "outputs",
          extendee: nil,
          number: 2,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2alpha.CommandResult",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "outputs",
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

  field :transaction, 1, proto3_optional: true, type: Sui.Rpc.V2beta.ExecutedTransaction
  field :outputs, 2, repeated: true, type: Sui.Rpc.V2alpha.CommandResult
end
