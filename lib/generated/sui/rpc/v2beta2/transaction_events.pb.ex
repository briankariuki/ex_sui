defmodule Sui.Rpc.V2beta2.TransactionEvents do
  @moduledoc """
  Events emitted during the successful execution of a transaction.
  """

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "TransactionEvents",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "bcs",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.Bcs",
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
          name: "events",
          extendee: nil,
          number: 3,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.Event",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "events",
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
        %Google.Protobuf.OneofDescriptorProto{name: "_bcs", options: nil, __unknown_fields__: []},
        %Google.Protobuf.OneofDescriptorProto{
          name: "_digest",
          options: nil,
          __unknown_fields__: []
        }
      ],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :bcs, 1, proto3_optional: true, type: Sui.Rpc.V2beta2.Bcs
  field :digest, 2, proto3_optional: true, type: :string
  field :events, 3, repeated: true, type: Sui.Rpc.V2beta2.Event
end
