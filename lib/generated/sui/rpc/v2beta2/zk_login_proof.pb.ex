defmodule Sui.Rpc.V2beta2.ZkLoginProof do
  @moduledoc """
  A zklogin groth16 proof.
  """

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "ZkLoginProof",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "a",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.CircomG1",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "a",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "b",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.CircomG2",
          default_value: nil,
          options: nil,
          oneof_index: 1,
          json_name: "b",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "c",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.CircomG1",
          default_value: nil,
          options: nil,
          oneof_index: 2,
          json_name: "c",
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
        %Google.Protobuf.OneofDescriptorProto{name: "_a", options: nil, __unknown_fields__: []},
        %Google.Protobuf.OneofDescriptorProto{name: "_b", options: nil, __unknown_fields__: []},
        %Google.Protobuf.OneofDescriptorProto{name: "_c", options: nil, __unknown_fields__: []}
      ],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :a, 1, proto3_optional: true, type: Sui.Rpc.V2beta2.CircomG1
  field :b, 2, proto3_optional: true, type: Sui.Rpc.V2beta2.CircomG2
  field :c, 3, proto3_optional: true, type: Sui.Rpc.V2beta2.CircomG1
end
