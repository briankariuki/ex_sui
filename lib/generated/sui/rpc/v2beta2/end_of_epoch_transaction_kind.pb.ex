defmodule Sui.Rpc.V2beta2.EndOfEpochTransactionKind do
  @moduledoc """
  Operation run at the end of an epoch.
  """

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "EndOfEpochTransactionKind",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "change_epoch",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.ChangeEpoch",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "changeEpoch",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "authenticator_state_expire",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.AuthenticatorStateExpire",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "authenticatorStateExpire",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "execution_time_observations",
          extendee: nil,
          number: 4,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".sui.rpc.v2beta2.ExecutionTimeObservations",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "executionTimeObservations",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "authenticator_state_create",
          extendee: nil,
          number: 200,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".google.protobuf.Empty",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "authenticatorStateCreate",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "randomness_state_create",
          extendee: nil,
          number: 201,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".google.protobuf.Empty",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "randomnessStateCreate",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "deny_list_state_create",
          extendee: nil,
          number: 202,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".google.protobuf.Empty",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "denyListStateCreate",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "bridge_state_create",
          extendee: nil,
          number: 203,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "bridgeStateCreate",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "bridge_committee_init",
          extendee: nil,
          number: 204,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "bridgeCommitteeInit",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "accumulator_root_create",
          extendee: nil,
          number: 205,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".google.protobuf.Empty",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "accumulatorRootCreate",
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
        %Google.Protobuf.OneofDescriptorProto{name: "kind", options: nil, __unknown_fields__: []}
      ],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  oneof :kind, 0

  field :change_epoch, 2, type: Sui.Rpc.V2beta2.ChangeEpoch, json_name: "changeEpoch", oneof: 0

  field :authenticator_state_expire, 3,
    type: Sui.Rpc.V2beta2.AuthenticatorStateExpire,
    json_name: "authenticatorStateExpire",
    oneof: 0

  field :execution_time_observations, 4,
    type: Sui.Rpc.V2beta2.ExecutionTimeObservations,
    json_name: "executionTimeObservations",
    oneof: 0

  field :authenticator_state_create, 200,
    type: Google.Protobuf.Empty,
    json_name: "authenticatorStateCreate",
    oneof: 0

  field :randomness_state_create, 201,
    type: Google.Protobuf.Empty,
    json_name: "randomnessStateCreate",
    oneof: 0

  field :deny_list_state_create, 202,
    type: Google.Protobuf.Empty,
    json_name: "denyListStateCreate",
    oneof: 0

  field :bridge_state_create, 203, type: :string, json_name: "bridgeStateCreate", oneof: 0
  field :bridge_committee_init, 204, type: :uint64, json_name: "bridgeCommitteeInit", oneof: 0

  field :accumulator_root_create, 205,
    type: Google.Protobuf.Empty,
    json_name: "accumulatorRootCreate",
    oneof: 0
end
