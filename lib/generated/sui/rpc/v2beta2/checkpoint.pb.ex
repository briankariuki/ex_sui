defmodule Sui.Rpc.V2beta2.Checkpoint do
  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "Checkpoint",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "sequence_number",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "sequenceNumber",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "digest",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 1,
          json_name: "digest",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "summary",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.CheckpointSummary",
          default_value: nil,
          options: nil,
          oneof_index: 2,
          json_name: "summary",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "signature",
          extendee: nil,
          number: 4,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.ValidatorAggregatedSignature",
          default_value: nil,
          options: nil,
          oneof_index: 3,
          json_name: "signature",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "contents",
          extendee: nil,
          number: 5,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.CheckpointContents",
          default_value: nil,
          options: nil,
          oneof_index: 4,
          json_name: "contents",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "transactions",
          extendee: nil,
          number: 6,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.ExecutedTransaction",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "transactions",
          proto3_optional: nil,
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
          name: "_sequence_number",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_digest",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_summary",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_signature",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_contents",
          options: nil,
          __unknown_fields__: []
        }
      ],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :sequence_number, 1, proto3_optional: true, type: :uint64, json_name: "sequenceNumber"
  field :digest, 2, proto3_optional: true, type: :string
  field :summary, 3, proto3_optional: true, type: Sui.Rpc.V2beta2.CheckpointSummary
  field :signature, 4, proto3_optional: true, type: Sui.Rpc.V2beta2.ValidatorAggregatedSignature
  field :contents, 5, proto3_optional: true, type: Sui.Rpc.V2beta2.CheckpointContents
  field :transactions, 6, repeated: true, type: Sui.Rpc.V2beta2.ExecutedTransaction
end
