defmodule Sui.Rpc.V2beta2.UserSignature do
  @moduledoc """
  A signature from a user.
  """

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "UserSignature",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "bcs",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.Bcs",
          default_value: nil,
          options: nil,
          oneof_index: 1,
          json_name: "bcs",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "scheme",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_ENUM,
          type_name: ".sui.rpc.v2beta2.SignatureScheme",
          default_value: nil,
          options: nil,
          oneof_index: 2,
          json_name: "scheme",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "simple",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.SimpleSignature",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "simple",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "multisig",
          extendee: nil,
          number: 4,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.MultisigAggregatedSignature",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "multisig",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "zklogin",
          extendee: nil,
          number: 5,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.ZkLoginAuthenticator",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "zklogin",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "passkey",
          extendee: nil,
          number: 6,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.PasskeyAuthenticator",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "passkey",
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
          name: "signature",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{name: "_bcs", options: nil, __unknown_fields__: []},
        %Google.Protobuf.OneofDescriptorProto{
          name: "_scheme",
          options: nil,
          __unknown_fields__: []
        }
      ],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  oneof :signature, 0

  field :bcs, 1, proto3_optional: true, type: Sui.Rpc.V2beta2.Bcs
  field :scheme, 2, proto3_optional: true, type: Sui.Rpc.V2beta2.SignatureScheme, enum: true
  field :simple, 3, type: Sui.Rpc.V2beta2.SimpleSignature, oneof: 0
  field :multisig, 4, type: Sui.Rpc.V2beta2.MultisigAggregatedSignature, oneof: 0
  field :zklogin, 5, type: Sui.Rpc.V2beta2.ZkLoginAuthenticator, oneof: 0
  field :passkey, 6, type: Sui.Rpc.V2beta2.PasskeyAuthenticator, oneof: 0
end
