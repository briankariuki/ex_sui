defmodule Sui.Rpc.V2beta2.UnchangedSharedObject.UnchangedSharedObjectKind do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.EnumDescriptorProto{
      name: "UnchangedSharedObjectKind",
      value: [
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "UNCHANGED_SHARED_OBJECT_KIND_UNKNOWN",
          number: 0,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "READ_ONLY_ROOT",
          number: 1,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "MUTATE_DELETED",
          number: 2,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "READ_DELETED",
          number: 3,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "CANCELED",
          number: 4,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "PER_EPOCH_CONFIG",
          number: 5,
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

  field :UNCHANGED_SHARED_OBJECT_KIND_UNKNOWN, 0
  field :READ_ONLY_ROOT, 1
  field :MUTATE_DELETED, 2
  field :READ_DELETED, 3
  field :CANCELED, 4
  field :PER_EPOCH_CONFIG, 5
end
