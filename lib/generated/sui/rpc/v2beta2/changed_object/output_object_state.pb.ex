defmodule Sui.Rpc.V2beta2.ChangedObject.OutputObjectState do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.EnumDescriptorProto{
      name: "OutputObjectState",
      value: [
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "OUTPUT_OBJECT_STATE_UNKNOWN",
          number: 0,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "OUTPUT_OBJECT_STATE_DOES_NOT_EXIST",
          number: 1,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "OUTPUT_OBJECT_STATE_OBJECT_WRITE",
          number: 2,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "OUTPUT_OBJECT_STATE_PACKAGE_WRITE",
          number: 3,
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

  field :OUTPUT_OBJECT_STATE_UNKNOWN, 0
  field :OUTPUT_OBJECT_STATE_DOES_NOT_EXIST, 1
  field :OUTPUT_OBJECT_STATE_OBJECT_WRITE, 2
  field :OUTPUT_OBJECT_STATE_PACKAGE_WRITE, 3
end
