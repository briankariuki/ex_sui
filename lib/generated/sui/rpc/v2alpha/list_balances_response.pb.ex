defmodule Sui.Rpc.V2alpha.ListBalancesResponse do
  @moduledoc """
  Response message for `LiveDataService.ListBalances`.
  Return the total coin balance for all coin types, owned by the address owner.
  """

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "ListBalancesResponse",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "balances",
          extendee: nil,
          number: 1,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2alpha.Balance",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "balances",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "next_page_token",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "nextPageToken",
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
          name: "_next_page_token",
          options: nil,
          __unknown_fields__: []
        }
      ],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :balances, 1, repeated: true, type: Sui.Rpc.V2alpha.Balance
  field :next_page_token, 2, proto3_optional: true, type: :bytes, json_name: "nextPageToken"
end
