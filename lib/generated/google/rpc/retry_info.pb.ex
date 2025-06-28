defmodule Google.Rpc.RetryInfo do
  @moduledoc """
  Describes when the clients can retry a failed request. Clients could ignore
  the recommendation here or retry when this information is missing from error
  responses.

  It's always recommended that clients should use exponential backoff when
  retrying.

  Clients should wait until `retry_delay` amount of time has passed since
  receiving the error response before retrying.  If retrying requests also
  fail, clients should use an exponential backoff scheme to gradually increase
  the delay between retries based on `retry_delay`, until either a maximum
  number of retries have been reached or a maximum retry delay cap has been
  reached.
  """

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "RetryInfo",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "retry_delay",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".google.protobuf.Duration",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "retryDelay",
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
  end

  field :retry_delay, 1, type: Google.Protobuf.Duration, json_name: "retryDelay"
end
