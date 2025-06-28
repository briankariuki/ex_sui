defmodule Sui.Rpc.V2beta.Jwk do
  @moduledoc """
  A JSON web key.

  Struct that contains info for a JWK. A list of them for different kinds can
  be retrieved from the JWK endpoint (for example, <https://www.googleapis.com/oauth2/v3/certs>).
  The JWK is used to verify the JWT token.
  """

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "Jwk",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "kty",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "kty",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "e",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 1,
          json_name: "e",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "n",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 2,
          json_name: "n",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "alg",
          extendee: nil,
          number: 4,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 3,
          json_name: "alg",
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
        %Google.Protobuf.OneofDescriptorProto{name: "_kty", options: nil, __unknown_fields__: []},
        %Google.Protobuf.OneofDescriptorProto{name: "_e", options: nil, __unknown_fields__: []},
        %Google.Protobuf.OneofDescriptorProto{name: "_n", options: nil, __unknown_fields__: []},
        %Google.Protobuf.OneofDescriptorProto{name: "_alg", options: nil, __unknown_fields__: []}
      ],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :kty, 1, proto3_optional: true, type: :string
  field :e, 2, proto3_optional: true, type: :string
  field :n, 3, proto3_optional: true, type: :string
  field :alg, 4, proto3_optional: true, type: :string
end
