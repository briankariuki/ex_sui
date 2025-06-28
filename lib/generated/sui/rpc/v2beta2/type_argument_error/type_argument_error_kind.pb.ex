defmodule Sui.Rpc.V2beta2.TypeArgumentError.TypeArgumentErrorKind do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.EnumDescriptorProto{
      name: "TypeArgumentErrorKind",
      value: [
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "TYPE_ARGUMENT_ERROR_KIND_UNKNOWN",
          number: 0,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "TYPE_NOT_FOUND",
          number: 1,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "CONSTRAINT_NOT_SATISFIED",
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

  field :TYPE_ARGUMENT_ERROR_KIND_UNKNOWN, 0
  field :TYPE_NOT_FOUND, 1
  field :CONSTRAINT_NOT_SATISFIED, 2
end
