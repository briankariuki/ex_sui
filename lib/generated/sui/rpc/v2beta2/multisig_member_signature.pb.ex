defmodule Sui.Rpc.V2beta2.MultisigMemberSignature do
  @moduledoc """
  A signature from a member of a multisig committee.
  """

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "MultisigMemberSignature",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "scheme",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_ENUM,
          type_name: ".sui.rpc.v2beta2.SignatureScheme",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "scheme",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "signature",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 1,
          json_name: "signature",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "zklogin",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.ZkLoginAuthenticator",
          default_value: nil,
          options: nil,
          oneof_index: 2,
          json_name: "zklogin",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "passkey",
          extendee: nil,
          number: 4,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.PasskeyAuthenticator",
          default_value: nil,
          options: nil,
          oneof_index: 3,
          json_name: "passkey",
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
          name: "_scheme",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_signature",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_zklogin",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_passkey",
          options: nil,
          __unknown_fields__: []
        }
      ],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :scheme, 1, proto3_optional: true, type: Sui.Rpc.V2beta2.SignatureScheme, enum: true
  field :signature, 2, proto3_optional: true, type: :bytes
  field :zklogin, 3, proto3_optional: true, type: Sui.Rpc.V2beta2.ZkLoginAuthenticator
  field :passkey, 4, proto3_optional: true, type: Sui.Rpc.V2beta2.PasskeyAuthenticator
end
