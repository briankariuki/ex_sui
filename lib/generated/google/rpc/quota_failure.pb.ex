defmodule Google.Rpc.QuotaFailure do
  @moduledoc """
  Describes how a quota check failed.

  For example if a daily limit was exceeded for the calling project,
  a service could respond with a QuotaFailure detail containing the project
  id and the description of the quota limit that was exceeded.  If the
  calling project hasn't enabled the service in the developer console, then
  a service could respond with the project id and set `service_disabled`
  to true.

  Also see RetryInfo and Help types for other details about handling a
  quota failure.
  """

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "QuotaFailure",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "violations",
          extendee: nil,
          number: 1,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".google.rpc.QuotaFailure.Violation",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "violations",
          proto3_optional: nil,
          __unknown_fields__: []
        }
      ],
      nested_type: [
        %Google.Protobuf.DescriptorProto{
          name: "Violation",
          field: [
            %Google.Protobuf.FieldDescriptorProto{
              name: "subject",
              extendee: nil,
              number: 1,
              label: :LABEL_OPTIONAL,
              type: :TYPE_STRING,
              type_name: nil,
              default_value: nil,
              options: nil,
              oneof_index: nil,
              json_name: "subject",
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

  field :violations, 1, repeated: true, type: Google.Rpc.QuotaFailure.Violation
end
