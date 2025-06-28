defmodule Sui.Rpc.V2beta2.OpenSignature.Reference do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.EnumDescriptorProto{
      name: "Reference",
      value: [
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "REFERENCE_UNKNOWN",
          number: 0,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "IMMUTABLE",
          number: 1,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "MUTABLE",
          number: 2,
          options: nil,
          __unknown_fields__: []
        }
      ],
      options: nil,
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :REFERENCE_UNKNOWN, 0
  field :IMMUTABLE, 1
  field :MUTABLE, 2
end
