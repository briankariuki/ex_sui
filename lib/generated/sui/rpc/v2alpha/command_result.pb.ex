defmodule Sui.Rpc.V2alpha.CommandResult do
  @moduledoc """
  An intermediate result/output from the execution of a single command
  """

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "CommandResult",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "return_values",
          extendee: nil,
          number: 1,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2alpha.CommandOutput",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "returnValues",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "mutated_by_ref",
          extendee: nil,
          number: 2,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2alpha.CommandOutput",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "mutatedByRef",
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

  field :return_values, 1,
    repeated: true,
    type: Sui.Rpc.V2alpha.CommandOutput,
    json_name: "returnValues"

  field :mutated_by_ref, 2,
    repeated: true,
    type: Sui.Rpc.V2alpha.CommandOutput,
    json_name: "mutatedByRef"
end
