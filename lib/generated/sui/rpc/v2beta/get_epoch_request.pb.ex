defmodule Sui.Rpc.V2beta.GetEpochRequest do
  @moduledoc """
  message BatchGetCheckpointsRequest {
  repeated GetCheckpointRequest requests = 1;

  // Mask specifying which fields to read.
  // If no mask is specified, defaults to `object_id,version,digest`.
  optional google.protobuf.FieldMask read_mask = 2;
  }

  message BatchGetCheckpointsResponse {
  repeated Checkpoint checkpoints = 1;
  }
  """

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "GetEpochRequest",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "epoch",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "epoch",
          proto3_optional: true,
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
          oneof_index: 1,
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
          name: "_epoch",
          options: nil,
          __unknown_fields__: []
        },
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

  field :epoch, 1, proto3_optional: true, type: :uint64

  field :read_mask, 2,
    proto3_optional: true,
    type: Google.Protobuf.FieldMask,
    json_name: "readMask"
end
