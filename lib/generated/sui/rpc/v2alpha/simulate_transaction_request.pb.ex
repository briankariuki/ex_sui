defmodule Sui.Rpc.V2alpha.SimulateTransactionRequest do
  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "SimulateTransactionRequest",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "transaction",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta.Transaction",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "transaction",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "read_mask",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".google.protobuf.FieldMask",
          default_value: nil,
          options: nil,
          oneof_index: 1,
          json_name: "readMask",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "checks",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_ENUM,
          type_name: ".sui.rpc.v2alpha.SimulateTransactionRequest.VmChecks",
          default_value: nil,
          options: nil,
          oneof_index: 2,
          json_name: "checks",
          proto3_optional: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "do_gas_selection",
          extendee: nil,
          number: 4,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BOOL,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 3,
          json_name: "doGasSelection",
          proto3_optional: true,
          __unknown_fields__: []
        }
      ],
      nested_type: [],
      enum_type: [
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
      ],
      extension_range: [],
      extension: [],
      options: nil,
      oneof_decl: [
        %Google.Protobuf.OneofDescriptorProto{
          name: "_transaction",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_read_mask",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_checks",
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.OneofDescriptorProto{
          name: "_do_gas_selection",
          options: nil,
          __unknown_fields__: []
        }
      ],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :transaction, 1, proto3_optional: true, type: Sui.Rpc.V2beta.Transaction

  field :read_mask, 2,
    proto3_optional: true,
    type: Google.Protobuf.FieldMask,
    json_name: "readMask"

  field :checks, 3,
    proto3_optional: true,
    type: Sui.Rpc.V2alpha.SimulateTransactionRequest.VmChecks,
    enum: true

  field :do_gas_selection, 4, proto3_optional: true, type: :bool, json_name: "doGasSelection"
end
