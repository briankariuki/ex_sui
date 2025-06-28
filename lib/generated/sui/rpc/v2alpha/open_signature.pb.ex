defmodule Sui.Rpc.V2alpha.OpenSignature do
  @moduledoc """
  Representation of a type signature that could appear as a function parameter or return value.
  """

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "OpenSignature",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "reference",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_ENUM,
          type_name: ".sui.rpc.v2alpha.OpenSignature.Reference",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "reference",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "body",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2alpha.OpenSignatureBody",
          default_value: nil,
          options: nil,
          oneof_index: 1,
          json_name: "body",
          proto3_optional: true,
          __unknown_fields__: []
        }
      ],
      nested_type: [],
      enum_type: [
        %Google.Protobuf.EnumDescriptorProto{
          name: "Reference",
          value: [
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "REFERENCE_UNKNOWN",
              number: 0,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "IMMUTABLE",
              number: 1,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "MUTABLE",
              number: 2,
              options: nil,
              __unknown_fields__: []
            }
          ],
          options: nil,
          reserved_range: [],
          reserved_name: [],
          __unknown_fields__: []
        }
      ],
      extension_range: [],
      extension: [],
      options: nil,
      oneof_decl: [
        %Google.Protobuf.OneofDescriptorProto{
          name: "_reference",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{name: "_body", options: nil, __unknown_fields__: []}
      ],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :reference, 1,
    proto3_optional: true,
    type: Sui.Rpc.V2alpha.OpenSignature.Reference,
    enum: true

  field :body, 2, proto3_optional: true, type: Sui.Rpc.V2alpha.OpenSignatureBody
end
