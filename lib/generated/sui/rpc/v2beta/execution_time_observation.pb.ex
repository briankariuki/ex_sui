defmodule Sui.Rpc.V2beta.ExecutionTimeObservation do
  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "ExecutionTimeObservation",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "kind",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_ENUM,
          type_name: ".sui.rpc.v2beta.ExecutionTimeObservation.ExecutionTimeObservationKind",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "kind",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "move_entry_point",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta.MoveCall",
          default_value: nil,
          options: nil,
          oneof_index: 1,
          json_name: "moveEntryPoint",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "validator_observations",
          extendee: nil,
          number: 3,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta.ValidatorExecutionTimeObservation",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "validatorObservations",
          proto3_optional: nil,
          __unknown_fields__: []
        }
      ],
      nested_type: [],
      enum_type: [
        %Google.Protobuf.EnumDescriptorProto{
          name: "ExecutionTimeObservationKind",
          value: [
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "EXECUTION_TIME_OBSERVATION_KIND_UNKNOWN",
              number: 0,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "MOVE_ENTRY_POINT",
              number: 1,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "TRANSFER_OBJECTS",
              number: 2,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "SPLIT_COINS",
              number: 3,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "MERGE_COINS",
              number: 4,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "PUBLISH",
              number: 5,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "MAKE_MOVE_VECTOR",
              number: 6,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "UPGRADE",
              number: 7,
              options: nil,
              __unknown_fields__: []
            }
          ],
          options: nil,
          reserved_range: [],
          reserved_name: [],
          __unknown_fields__: []
        }
      ],
      extension_range: [],
      extension: [],
      options: nil,
      oneof_decl: [
        %Google.Protobuf.OneofDescriptorProto{
          name: "_kind",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_move_entry_point",
          options: nil,
          __unknown_fields__: []
        }
      ],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :kind, 1,
    proto3_optional: true,
    type: Sui.Rpc.V2beta.ExecutionTimeObservation.ExecutionTimeObservationKind,
    enum: true

  field :move_entry_point, 2,
    proto3_optional: true,
    type: Sui.Rpc.V2beta.MoveCall,
    json_name: "moveEntryPoint"

  field :validator_observations, 3,
    repeated: true,
    type: Sui.Rpc.V2beta.ValidatorExecutionTimeObservation,
    json_name: "validatorObservations"
end
