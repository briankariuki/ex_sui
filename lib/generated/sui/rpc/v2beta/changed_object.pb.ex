defmodule Sui.Rpc.V2beta.ChangedObject do
  @moduledoc """
  Input/output state of an object that was changed during execution.
  """

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "ChangedObject",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "object_id",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "objectId",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "input_state",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_ENUM,
          type_name: ".sui.rpc.v2beta.ChangedObject.InputObjectState",
          default_value: nil,
          options: nil,
          oneof_index: 1,
          json_name: "inputState",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "input_version",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 2,
          json_name: "inputVersion",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "input_digest",
          extendee: nil,
          number: 4,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 3,
          json_name: "inputDigest",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "input_owner",
          extendee: nil,
          number: 5,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta.Owner",
          default_value: nil,
          options: nil,
          oneof_index: 4,
          json_name: "inputOwner",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "output_state",
          extendee: nil,
          number: 6,
          label: :LABEL_OPTIONAL,
          type: :TYPE_ENUM,
          type_name: ".sui.rpc.v2beta.ChangedObject.OutputObjectState",
          default_value: nil,
          options: nil,
          oneof_index: 5,
          json_name: "outputState",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "output_version",
          extendee: nil,
          number: 7,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 6,
          json_name: "outputVersion",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "output_digest",
          extendee: nil,
          number: 8,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 7,
          json_name: "outputDigest",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "output_owner",
          extendee: nil,
          number: 9,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta.Owner",
          default_value: nil,
          options: nil,
          oneof_index: 8,
          json_name: "outputOwner",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "id_operation",
          extendee: nil,
          number: 10,
          label: :LABEL_OPTIONAL,
          type: :TYPE_ENUM,
          type_name: ".sui.rpc.v2beta.ChangedObject.IdOperation",
          default_value: nil,
          options: nil,
          oneof_index: 9,
          json_name: "idOperation",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "object_type",
          extendee: nil,
          number: 11,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 10,
          json_name: "objectType",
          proto3_optional: true,
          __unknown_fields__: []
        }
      ],
      nested_type: [],
      enum_type: [
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
        },
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
        },
        %Google.Protobuf.EnumDescriptorProto{
          name: "IdOperation",
          value: [
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "ID_OPERATION_UNKNOWN",
              number: 0,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "NONE",
              number: 1,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "CREATED",
              number: 2,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "DELETED",
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
      ],
      extension_range: [],
      extension: [],
      options: nil,
      oneof_decl: [
        %Google.Protobuf.OneofDescriptorProto{
          name: "_object_id",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_input_state",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_input_version",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_input_digest",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_input_owner",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_output_state",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_output_version",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_output_digest",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_output_owner",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_id_operation",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_object_type",
          options: nil,
          __unknown_fields__: []
        }
      ],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :object_id, 1, proto3_optional: true, type: :string, json_name: "objectId"

  field :input_state, 2,
    proto3_optional: true,
    type: Sui.Rpc.V2beta.ChangedObject.InputObjectState,
    json_name: "inputState",
    enum: true

  field :input_version, 3, proto3_optional: true, type: :uint64, json_name: "inputVersion"
  field :input_digest, 4, proto3_optional: true, type: :string, json_name: "inputDigest"

  field :input_owner, 5,
    proto3_optional: true,
    type: Sui.Rpc.V2beta.Owner,
    json_name: "inputOwner"

  field :output_state, 6,
    proto3_optional: true,
    type: Sui.Rpc.V2beta.ChangedObject.OutputObjectState,
    json_name: "outputState",
    enum: true

  field :output_version, 7, proto3_optional: true, type: :uint64, json_name: "outputVersion"
  field :output_digest, 8, proto3_optional: true, type: :string, json_name: "outputDigest"

  field :output_owner, 9,
    proto3_optional: true,
    type: Sui.Rpc.V2beta.Owner,
    json_name: "outputOwner"

  field :id_operation, 10,
    proto3_optional: true,
    type: Sui.Rpc.V2beta.ChangedObject.IdOperation,
    json_name: "idOperation",
    enum: true

  field :object_type, 11, proto3_optional: true, type: :string, json_name: "objectType"
end
