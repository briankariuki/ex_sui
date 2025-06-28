defmodule Sui.Rpc.V2beta2.BatchGetObjectsRequest do
  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "BatchGetObjectsRequest",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "requests",
          extendee: nil,
          number: 1,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.GetObjectRequest",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "requests",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "read_mask",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".google.protobuf.FieldMask",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "readMask",
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
          name: "_read_mask",
          options: nil,
          __unknown_fields__: []
        }
      ],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :requests, 1, repeated: true, type: Sui.Rpc.V2beta2.GetObjectRequest

  field :read_mask, 2,
    proto3_optional: true,
    type: Google.Protobuf.FieldMask,
    json_name: "readMask"
end
