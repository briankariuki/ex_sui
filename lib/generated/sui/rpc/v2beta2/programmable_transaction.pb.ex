defmodule Sui.Rpc.V2beta2.ProgrammableTransaction do
  @moduledoc """
  A user transaction.

  Contains a series of native commands and Move calls where the results of one command can be
  used in future commands.
  """

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "ProgrammableTransaction",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "inputs",
          extendee: nil,
          number: 1,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.Input",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "inputs",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "commands",
          extendee: nil,
          number: 2,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.Command",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "commands",
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

  field :inputs, 1, repeated: true, type: Sui.Rpc.V2beta2.Input
  field :commands, 2, repeated: true, type: Sui.Rpc.V2beta2.Command
end
