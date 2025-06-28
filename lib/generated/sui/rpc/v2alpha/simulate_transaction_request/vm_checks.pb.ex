defmodule Sui.Rpc.V2alpha.SimulateTransactionRequest.VmChecks do
  @moduledoc """
  buf:lint:ignore ENUM_ZERO_VALUE_SUFFIX
  """

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.EnumDescriptorProto{
      name: "VmChecks",
      value: [
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "ENABLED",
          number: 0,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "DISABLED",
          number: 1,
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

  field :ENABLED, 0
  field :DISABLED, 1
end
