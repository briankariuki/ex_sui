defmodule Sui.Rpc.V2alpha.GetBalanceResponse do
  @moduledoc """
  Response message for `LiveDataService.GetBalance`.
  Return the total coin balance for one coin type, owned by the address owner.
  """

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "GetBalanceResponse",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "balance",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2alpha.Balance",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "balance",
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
          name: "_balance",
          options: nil,
          __unknown_fields__: []
        }
      ],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :balance, 1, proto3_optional: true, type: Sui.Rpc.V2alpha.Balance
end
