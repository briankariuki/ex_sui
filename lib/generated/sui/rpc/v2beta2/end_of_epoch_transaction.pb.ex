defmodule Sui.Rpc.V2beta2.EndOfEpochTransaction do
  @moduledoc """
  Set of operations run at the end of the epoch to close out the current epoch
  and start the next one.
  """

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "EndOfEpochTransaction",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "transactions",
          extendee: nil,
          number: 1,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.EndOfEpochTransactionKind",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "transactions",
          proto3_optional: nil,
          __unknown_fields__: []
        }
      ],
      nested_type: [],
      enum_type: [],
      extension_range: [],
      extension: [],
      options: nil,
      oneof_decl: [],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :transactions, 1, repeated: true, type: Sui.Rpc.V2beta2.EndOfEpochTransactionKind
end
