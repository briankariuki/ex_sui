defmodule Sui.Rpc.V2beta2.AuthenticatorStateExpire do
  @moduledoc """
  Expire old JWKs.
  """

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "AuthenticatorStateExpire",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "min_epoch",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "minEpoch",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "authenticator_object_initial_shared_version",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 1,
          json_name: "authenticatorObjectInitialSharedVersion",
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
          name: "_min_epoch",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_authenticator_object_initial_shared_version",
          options: nil,
          __unknown_fields__: []
        }
      ],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :min_epoch, 1, proto3_optional: true, type: :uint64, json_name: "minEpoch"

  field :authenticator_object_initial_shared_version, 2,
    proto3_optional: true,
    type: :uint64,
    json_name: "authenticatorObjectInitialSharedVersion"
end
