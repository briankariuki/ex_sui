defmodule Sui.Rpc.V2beta.PackageUpgradeError.PackageUpgradeErrorKind do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.EnumDescriptorProto{
      name: "PackageUpgradeErrorKind",
      value: [
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "PACKAGE_UPGRADE_ERROR_KIND_UNKNOWN",
          number: 0,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "UNABLE_TO_FETCH_PACKAGE",
          number: 1,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "NOT_A_PACKAGE",
          number: 2,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "INCOMPATIBLE_UPGRADE",
          number: 3,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "DIGETS_DOES_NOT_MATCH",
          number: 4,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "UNKNOWN_UPGRADE_POLICY",
          number: 5,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "PACKAGE_ID_DOES_NOT_MATCH",
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

  field :PACKAGE_UPGRADE_ERROR_KIND_UNKNOWN, 0
  field :UNABLE_TO_FETCH_PACKAGE, 1
  field :NOT_A_PACKAGE, 2
  field :INCOMPATIBLE_UPGRADE, 3
  field :DIGETS_DOES_NOT_MATCH, 4
  field :UNKNOWN_UPGRADE_POLICY, 5
  field :PACKAGE_ID_DOES_NOT_MATCH, 6
end
