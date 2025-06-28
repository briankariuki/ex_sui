defmodule Sui.Rpc.V2beta2.PasskeyAuthenticator do
  @moduledoc """
  A passkey authenticator.

  See
  [struct.PasskeyAuthenticator](https://mystenlabs.github.io/sui-rust-sdk/sui_sdk_types/struct.PasskeyAuthenticator.html#bcs)
  for more information on the requirements on the shape of the
  `client_data_json` field.
  """

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "PasskeyAuthenticator",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "authenticator_data",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "authenticatorData",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "client_data_json",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 1,
          json_name: "clientDataJson",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "signature",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.SimpleSignature",
          default_value: nil,
          options: nil,
          oneof_index: 2,
          json_name: "signature",
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
          name: "_authenticator_data",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_client_data_json",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_signature",
          options: nil,
          __unknown_fields__: []
        }
      ],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :authenticator_data, 1,
    proto3_optional: true,
    type: :bytes,
    json_name: "authenticatorData"

  field :client_data_json, 2, proto3_optional: true, type: :string, json_name: "clientDataJson"
  field :signature, 3, proto3_optional: true, type: Sui.Rpc.V2beta2.SimpleSignature
end
