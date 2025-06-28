defmodule Sui.Rpc.V2beta2.ZkLoginAuthenticator do
  @moduledoc """
  A zklogin authenticator.
  """

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "ZkLoginAuthenticator",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "inputs",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.ZkLoginInputs",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "inputs",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "max_epoch",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 1,
          json_name: "maxEpoch",
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
          name: "_inputs",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_max_epoch",
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

  field :inputs, 1, proto3_optional: true, type: Sui.Rpc.V2beta2.ZkLoginInputs
  field :max_epoch, 2, proto3_optional: true, type: :uint64, json_name: "maxEpoch"
  field :signature, 3, proto3_optional: true, type: Sui.Rpc.V2beta2.SimpleSignature
end
