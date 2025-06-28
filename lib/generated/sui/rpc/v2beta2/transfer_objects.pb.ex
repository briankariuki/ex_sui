defmodule Sui.Rpc.V2beta2.TransferObjects do
  @moduledoc """
  Command to transfer ownership of a set of objects to an address.
  """

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "TransferObjects",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "objects",
          extendee: nil,
          number: 1,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.Argument",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "objects",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "address",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.Argument",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "address",
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
          name: "_address",
          options: nil,
          __unknown_fields__: []
        }
      ],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :objects, 1, repeated: true, type: Sui.Rpc.V2beta2.Argument
  field :address, 2, proto3_optional: true, type: Sui.Rpc.V2beta2.Argument
end
