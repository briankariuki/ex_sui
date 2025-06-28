defmodule Google.Rpc.BadRequest do
  @moduledoc """
  Describes violations in a client request. This error type focuses on the
  syntactic aspects of the request.
  """

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "BadRequest",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "field_violations",
          extendee: nil,
          number: 1,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".google.rpc.BadRequest.FieldViolation",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "fieldViolations",
          proto3_optional: nil,
          __unknown_fields__: []
        }
      ],
      nested_type: [
        %Google.Protobuf.DescriptorProto{
          name: "FieldViolation",
          field: [
            %Google.Protobuf.FieldDescriptorProto{
              name: "field",
              extendee: nil,
              number: 1,
              label: :LABEL_OPTIONAL,
              type: :TYPE_STRING,
              type_name: nil,
              default_value: nil,
              options: nil,
              oneof_index: nil,
              json_name: "field",
              proto3_optional: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.FieldDescriptorProto{
              name: "description",
              extendee: nil,
              number: 2,
              label: :LABEL_OPTIONAL,
              type: :TYPE_STRING,
              type_name: nil,
              default_value: nil,
              options: nil,
              oneof_index: nil,
              json_name: "description",
              proto3_optional: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.FieldDescriptorProto{
              name: "reason",
              extendee: nil,
              number: 3,
              label: :LABEL_OPTIONAL,
              type: :TYPE_STRING,
              type_name: nil,
              default_value: nil,
              options: nil,
              oneof_index: nil,
              json_name: "reason",
              proto3_optional: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.FieldDescriptorProto{
              name: "localized_message",
              extendee: nil,
              number: 4,
              label: :LABEL_OPTIONAL,
              type: :TYPE_MESSAGE,
              type_name: ".google.rpc.LocalizedMessage",
              default_value: nil,
              options: nil,
              oneof_index: nil,
              json_name: "localizedMessage",
              proto3_optional: nil,
              __unknown_fields__: []
            }
          ],
          nested_type: [],
          enum_type: [],
          extension_range: [],
          extension: [],
          options: nil,
          oneof_decl: [],
          reserved_range: [],
          reserved_name: [],
          __unknown_fields__: []
        }
      ],
      enum_type: [],
      extension_range: [],
      extension: [],
      options: nil,
      oneof_decl: [],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :field_violations, 1,
    repeated: true,
    type: Google.Rpc.BadRequest.FieldViolation,
    json_name: "fieldViolations"
end
