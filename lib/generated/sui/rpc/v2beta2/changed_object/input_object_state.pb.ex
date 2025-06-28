defmodule Sui.Rpc.V2beta2.ChangedObject.InputObjectState do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.EnumDescriptorProto{
      name: "InputObjectState",
      value: [
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "INPUT_OBJECT_STATE_UNKNOWN",
          number: 0,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "INPUT_OBJECT_STATE_DOES_NOT_EXIST",
          number: 1,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "INPUT_OBJECT_STATE_EXISTS",
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

  field :INPUT_OBJECT_STATE_UNKNOWN, 0
  field :INPUT_OBJECT_STATE_DOES_NOT_EXIST, 1
  field :INPUT_OBJECT_STATE_EXISTS, 2
end
