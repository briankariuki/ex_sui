defmodule Sui.Rpc.V2beta2.SplitCoins do
  @moduledoc """
  Command to split a single coin object into multiple coins.
  """

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "SplitCoins",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "coin",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.Argument",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "coin",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "amounts",
          extendee: nil,
          number: 2,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.Argument",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "amounts",
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
        %Google.Protobuf.OneofDescriptorProto{name: "_coin", options: nil, __unknown_fields__: []}
      ],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :coin, 1, proto3_optional: true, type: Sui.Rpc.V2beta2.Argument
  field :amounts, 2, repeated: true, type: Sui.Rpc.V2beta2.Argument
end
