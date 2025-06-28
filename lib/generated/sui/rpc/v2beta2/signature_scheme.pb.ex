defmodule Sui.Rpc.V2beta2.SignatureScheme do
  @moduledoc """
  Flag use to disambiguate the signature schemes supported by Sui.

  Note: the enum values defined by this proto message exactly match their
  expected BCS serialized values when serialized as a u8. See
  [enum.SignatureScheme](https://mystenlabs.github.io/sui-rust-sdk/sui_sdk_types/enum.SignatureScheme.html)
  for more information about signature schemes.
  """

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.EnumDescriptorProto{
      name: "SignatureScheme",
      value: [
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "ED25519",
          number: 0,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "SECP256K1",
          number: 1,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "SECP256R1",
          number: 2,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "MULTISIG",
          number: 3,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "BLS12381",
          number: 4,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "ZKLOGIN",
          number: 5,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "PASSKEY",
          number: 6,
          options: nil,
          __unknown_fields__: []
        }
      ],
      options: nil,
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :ED25519, 0
  field :SECP256K1, 1
  field :SECP256R1, 2
  field :MULTISIG, 3
  field :BLS12381, 4
  field :ZKLOGIN, 5
  field :PASSKEY, 6
end
