defmodule ExSui do
  @moduledoc """
  > [!WARNING]
  > DO NOT USE. This is currently in development.

  ExSui is a comprehensive Elixir library that provides a high-performance, type-safe interface for interacting with the [Sui](https://sui.io/)
  blockchain through its native [gRPC API](https://docs.sui.io/concepts/grpc-overview).

  [Sui](https://sui.io/) is a Layer 1 blockchain designed for near-instant, low-cost transactions with parallel processing and optimized scalability,
  making it ideal for DeFi, NFTs, and gaming. Sui uses [Move](https://sui.io/move), a smart contract language designed for safety and efficiency.
  Unlike traditional smart contract languages like Solidity, Move is built with security in mind, minimizing common
  vulnerabilities such as reentrancy attacks and ensuring better resource management.
  """

  alias ExSui.Types.GetCoinsOptions

  alias Sui.Rpc.V2beta.Checkpoint
  alias Sui.Rpc.V2beta.GetCheckpointRequest
  alias Sui.Rpc.V2beta.GetTransactionRequest
  alias Sui.Rpc.V2beta.Transaction

  alias Sui.Rpc.V2alpha.ListOwnedObjectsRequest
  alias Sui.Rpc.V2alpha.ListOwnedObjectsResponse

  alias Sui.Rpc.V2alpha.GetBalanceRequest
  alias Sui.Rpc.V2alpha.GetBalanceResponse

  alias Sui.Rpc.V2beta.Epoch
  alias Sui.Rpc.V2beta.GetEpochRequest

  alias Sui.Rpc.V2beta.Object
  alias Sui.Rpc.V2beta.GetObjectRequest

  alias Sui.Rpc.V2beta.BatchGetObjectsRequest
  alias Sui.Rpc.V2beta.BatchGetObjectsResponse

  alias Sui.Rpc.V2alpha.SimulateTransactionRequest
  alias Sui.Rpc.V2alpha.SimulateTransactionResponse

  alias Sui.Rpc.V2beta.ExecuteTransactionRequest
  alias Sui.Rpc.V2beta.ExecuteTransactionResponse

  alias Sui.Rpc.V2beta.GetServiceInfoRequest
  alias Sui.Rpc.V2beta.GetServiceInfoResponse

  alias Sui.Rpc.V2alpha.ListDynamicFieldsRequest
  alias Sui.Rpc.V2alpha.ListDynamicFieldsResponse

  @doc """
  Gets the current sui blockchain reference gas price.

  ## Examples
      iex> ExSui.get_reference_gas_price()
      {:ok,
        %Sui.Rpc.V2beta.Epoch{
          epoch: 0,
          committee: nil,
          system_state: nil,
          first_checkpoint: nil,
          last_checkpoint: nil,
          start: %Google.Protobuf.Timestamp{
            seconds: 1751401172,
            nanos: 821000000,
            __unknown_fields__: []
          },
          end: nil,
          reference_gas_price: 1000,
          protocol_config: nil,
          __unknown_fields__: []
        }}
  """
  @spec get_reference_gas_price() ::
          {:ok, Epoch.t()} | {:error, GRPC.RPCError.t()}
  defdelegate get_reference_gas_price, to: ExSui.Core

  @doc """
  Gets the current sui blockchain reference gas price.

  ## Examples
      iex> ExSui.get_reference_gas_price(%Sui.Rpc.V2beta.GetEpochRequest%{read_mask: %{paths: [ "epoch", "reference_gas_price", "first_checkpoint", "last_checkpoint", "start", "end", "system_state"]}})
      {:ok,
        %Sui.Rpc.V2beta.Epoch{
          epoch: 0,
          committee: nil,
          system_state: %Sui.Rpc.V2beta.SystemState{
            version: 1,
            epoch: 0,
            protocol_version: 86,
            validators: %Sui.Rpc.V2beta.ValidatorSet{
              total_stake: 20000000000000000,
              active_validators: [
                %Sui.Rpc.V2beta.Validator{
                  name: "validator-0",
                  address: "0x1eb1af5dbe9a1aa92d4e5204de368b3ce7bf4882ad6d8bb85f48b42449d72d38",
                  description: "",
                  image_url: "",
                  project_url: "",
                  protocol_public_key: <<153, 242, 94, 246, 31, 128, 50, 185, 20, 99,
                    100, 96, 152, 44, 92, 198, 241, 52, 239, 29, 218, 231, 102, 87,
                    242, 203, 254, 193, 235, 252, 141, 9, ...>>,
                  proof_of_possession: <<130, 12, 205, 55, 195, 3, 38, 147, 167, 184,
                    109, 227, 179, 83, 130, 17, 58, 234, 241, 143, 75, 122, 82, 62, 5,
                    30, 234, 200, 169, 237, 81, ...>>,
                  network_public_key: <<216, 91, 244, 132, 238, 159, 32, 111, 72, 51,
                    40, 184, 70, 31, 22, 64, 209, 252, 204, 224, 48, 5, 177, 155, 130,
                    199, 49, 88, 13, 125, ...>>,
                  worker_public_key: <<10, 141, 144, 37, 214, 167, 170, 235, 223, 11,
                    240, 221, 114, 162, 57, 6, 45, 207, 109, 129, 25, 95, 148, 144,
                    205, 238, 6, 170, 13, ...>>,
                  network_address: "/ip4/127.0.0.1/tcp/40655/http",
                  p2p_address: "/ip4/127.0.0.1/udp/39933",
                  primary_address: "/ip4/127.0.0.1/udp/40709",
                  worker_address: "/ip4/127.0.0.1/udp/32899",
                  next_epoch_protocol_public_key: nil,
                  next_epoch_proof_of_possession: nil,
                  next_epoch_network_public_key: nil,
                  next_epoch_worker_public_key: nil,
                  next_epoch_network_address: nil,
                  next_epoch_p2p_address: nil,
                  next_epoch_primary_address: nil,
                  next_epoch_worker_address: nil,
                  metadata_extra_fields: %Sui.Rpc.V2beta.MoveTable{
                    id: "0x7a4f34bd975a287b1a22e3f49634ad97cd93b66077eda74d7eef4badadff9e50",
                    size: 0,
                    __unknown_fields__: []
                  },
                  voting_power: 10000,
                  operation_cap_id: "0x5190d89c0182783d1190f79414392248d3baf6013abaae28bfd487dff671d686",
                  gas_price: 1000,
                  staking_pool: %Sui.Rpc.V2beta.StakingPool{
                    id: "0x6947ccf15e784f0b4825c1b4c8745de654ba303b8a5b4e317da929a889747c75",
                    activation_epoch: 0,
                    deactivation_epoch: nil,
                    sui_balance: 20000000000000000,
                    rewards_pool: 0,
                    pool_token_balance: 20000000000000000,
                    exchange_rates: %Sui.Rpc.V2beta.MoveTable{
                      id: "0x57d93973c930da83daf0b7981bbaf635ae1f83d4e002c41b3ed6827a79e9c94a",
                      size: 1,
                      __unknown_fields__: []
                    },
                    pending_stake: 0,
                    pending_total_sui_withdraw: 0,
                    pending_pool_token_withdraw: 0,
                    extra_fields: %Sui.Rpc.V2beta.MoveTable{
                      id: "0xb7a754589ff16d0782afeab0cd54b086592e231c474fcbe67143bef15331c5be",
                      ...
                    },
                    __unknown_fields__: []
                  },
                  commission_rate: 200,
                  next_epoch_stake: 20000000000000000,
                  next_epoch_gas_price: 1000,
                  next_epoch_commission_rate: 200,
                  extra_fields: %Sui.Rpc.V2beta.MoveTable{
                    id: "0x402ce6623bb3344ddf08a665f9e1f4952837d864d17c84d163dc94ce74262f55",
                    size: 0,
                    __unknown_fields__: []
                  },
                  __unknown_fields__: []
                }
              ],
              pending_active_validators: %Sui.Rpc.V2beta.MoveTable{
                id: "0x296d3df678e6b98d1d1073fb0e441e4557da4035700ffc50f961a2d68dc1f195",
                size: 0,
                __unknown_fields__: []
              },
              pending_removals: [],
              staking_pool_mappings: %Sui.Rpc.V2beta.MoveTable{
                id: "0x1fcda91245fdc9df03656a737e8cbd1d3a42cf21759f97eb4c2e2af0b7cff1ec",
                size: 1,
                __unknown_fields__: []
              },
              inactive_validators: %Sui.Rpc.V2beta.MoveTable{
                id: "0x32ac2de296e73af71aee47930e2d93bff4c6f059caa2ac17b5161f299e4bee6f",
                size: 0,
                __unknown_fields__: []
              },
              validator_candidates: %Sui.Rpc.V2beta.MoveTable{
                id: "0x761487901aefaf0af8f0e9b2673e8bfeb95306051fa93d49ef806271dda6e495",
                size: 0,
                __unknown_fields__: []
              },
              at_risk_validators: %{},
              extra_fields: %Sui.Rpc.V2beta.MoveTable{
                id: "0xe0e644162cc465ad3c49d18699e52baf94c762761824cf82295d119564c5e6da",
                size: 0,
                __unknown_fields__: []
              },
              __unknown_fields__: []
            },
            storage_fund: %Sui.Rpc.V2beta.StorageFund{
              total_object_storage_rebates: 0,
              non_refundable_balance: 0,
              __unknown_fields__: []
            },
            parameters: %Sui.Rpc.V2beta.SystemParameters{
              epoch_duration_ms: 86400000,
              stake_subsidy_start_epoch: 0,
              min_validator_count: nil,
              max_validator_count: 150,
              min_validator_joining_stake: 30000000000000000,
              validator_low_stake_threshold: 20000000000000000,
              validator_very_low_stake_threshold: 15000000000000000,
              validator_low_stake_grace_period: 7,
              extra_fields: %Sui.Rpc.V2beta.MoveTable{
                id: "0x8276777c562234de7217ace33dced01199d56929b979d435f2149cc043f78ba4",
                size: 0,
                __unknown_fields__: []
              },
              __unknown_fields__: []
            },
            reference_gas_price: 1000,
            validator_report_records: [],
            stake_subsidy: %Sui.Rpc.V2beta.StakeSubsidy{
              balance: 9200000000000000000,
              distribution_counter: 0,
              current_distribution_amount: 1000000000000000,
              stake_subsidy_period_length: 10,
              stake_subsidy_decrease_rate: 1000,
              extra_fields: %Sui.Rpc.V2beta.MoveTable{
                id: "0x14d85b0fa2a2416dfc9580b14ff70aaab1ea6f510e6114b1486ec8d137445383",
                size: 0,
                __unknown_fields__: []
              },
              __unknown_fields__: []
            },
            safe_mode: false,
            safe_mode_storage_rewards: 0,
            safe_mode_computation_rewards: 0,
            safe_mode_storage_rebates: 0,
            safe_mode_non_refundable_storage_fee: 0,
            epoch_start_timestamp_ms: 1751401172821,
            extra_fields: %Sui.Rpc.V2beta.MoveTable{
              id: "0x11f95c9464fb556f65a168928c426cfb2713d89d3eb4cb24965d9f720ba62342",
              size: 0,
              __unknown_fields__: []
            },
            __unknown_fields__: []
          },
          first_checkpoint: 0,
          last_checkpoint: nil,
          start: %Google.Protobuf.Timestamp{
            seconds: 1751401172,
            nanos: 821000000,
            __unknown_fields__: []
          },
          end: nil,
          reference_gas_price: 1000,
          protocol_config: nil,
          __unknown_fields__: []
        }}

  """
  @spec get_reference_gas_price(GetEpochRequest.t()) ::
          {:ok, Epoch.t()} | {:error, GRPC.RPCError.t()}
  defdelegate get_reference_gas_price(request), to: ExSui.Core

  @doc """
  Gets the current Sui blockchain checkpoint.

  ## Examples
      iex> ExSui.get_checkpoint()
      {:ok,
        %Sui.Rpc.V2beta.Checkpoint{
          sequence_number: 212984592,
          digest: "4iuCTmYRJgVKGtZV2cN1piwgsftqFMcepo4ezRgTYoEE",
          summary: nil,
          signature: nil,
          contents: nil,
          transactions: [],
          __unknown_fields__: []
        }}

  """
  @spec get_checkpoint() ::
          {:ok, Checkpoint.t()} | {:error, GRPC.RPCError.t()}
  defdelegate get_checkpoint, to: ExSui.Core

  @doc """
  Gets the current Sui blockchain checkpoint.

  ## Examples
      iex> ExSui.get_checkpoint(%Sui.Rpc.V2beta.GetCheckpointRequest{})
      {:ok,
        %Sui.Rpc.V2beta.Checkpoint{
          sequence_number: 212984592,
          digest: "4iuCTmYRJgVKGtZV2cN1piwgsftqFMcepo4ezRgTYoEE",
          summary: nil,
          signature: nil,
          contents: nil,
          transactions: [],
          __unknown_fields__: []
        }}
  """
  @spec get_checkpoint(GetCheckpointRequest.t()) ::
          {:ok, Checkpoint.t()} | {:error, GRPC.RPCError.t()}
  defdelegate get_checkpoint(request), to: ExSui.Core

  @doc """
  Gets the service information of the connected sui gRPC service.

  ## Examples
      iex> ExSui.get_service_info()
      {:ok,
        %Sui.Rpc.V2beta.GetServiceInfoResponse{
          chain_id: "65ii4jSpvGMJDpRAwiNrq8iesXiebybS9qLWHauHJLp3",
          chain: "unknown",
          epoch: 0,
          checkpoint_height: 770,
          timestamp: %Google.Protobuf.Timestamp{
            seconds: 1751401689,
            nanos: 535000000,
            __unknown_fields__: []
          },
          lowest_available_checkpoint: 0,
          lowest_available_checkpoint_objects: 770,
          server_version: "sui-node/unknown",
          __unknown_fields__: []
        }}

  """
  @spec get_service_info() ::
          {:ok, GetServiceInfoResponse.t()} | {:error, GRPC.RPCError.t()}
  defdelegate get_service_info, to: ExSui.Core

  @doc """
  Gets the service information of the connected sui gRPC service

  ## Examples
      iex> ExSui.get_service_info(%Sui.Rpc.V2beta.GetCheckpointRequest{})
      {:ok,
        %Sui.Rpc.V2beta.GetServiceInfoResponse{
          chain_id: "65ii4jSpvGMJDpRAwiNrq8iesXiebybS9qLWHauHJLp3",
          chain: "unknown",
          epoch: 0,
          checkpoint_height: 770,
          timestamp: %Google.Protobuf.Timestamp{
            seconds: 1751401689,
            nanos: 535000000,
            __unknown_fields__: []
          },
          lowest_available_checkpoint: 0,
          lowest_available_checkpoint_objects: 770,
          server_version: "sui-node/unknown",
          __unknown_fields__: []
        }}
  """
  @spec get_service_info(GetServiceInfoRequest.t()) ::
          {:ok, GetServiceInfoResponse.t()} | {:error, GRPC.RPCError.t()}
  defdelegate get_service_info(request), to: ExSui.Core

  @doc """
  Gets balance of the coin type from address.

  ## Examples
      iex> ExSui.get_balance(%Sui.Rpc.V2alpha.GetBalanceRequest{owner: "0xd7ffd0cf645b373ed9a1a055805d8eb177d8dae9de3503fb91277ae8cbdb8330", coin_type: "0x2::sui::SUI"})
      {:ok,
        %Sui.Rpc.V2alpha.GetBalanceResponse{
          balance: %Sui.Rpc.V2alpha.Balance{
            coin_type: "0x0000000000000000000000000000000000000000000000000000000000000002::sui::SUI",
            balance: 150000000000000000,
            __unknown_fields__: []
          },
          __unknown_fields__: []
        }}
  """
  @spec get_balance(GetBalanceRequest.t()) ::
          {:ok, GetBalanceResponse.t()} | {:error, GRPC.RPCError.t()}
  defdelegate get_balance(request), to: ExSui.Core

  @doc """
  Gets a transaction details.

  ## Examples
      iex> transaction = %Sui.Rpc.V2beta.GetTransactionRequest{digest: "3CadAYpBgYmgDVHWrKYne2V2bfN3ZkXfELVsBtoe7jHq", read_mask: %{paths: ["digest", "signatures", "events", "transaction"]}}
      iex> ExSui.get_transaction(transaction)
      {:ok,
        %Sui.Rpc.V2beta.ExecutedTransaction{
          digest: "3CadAYpBgYmgDVHWrKYne2V2bfN3ZkXfELVsBtoe7jHq",
          transaction: %Sui.Rpc.V2beta.Transaction{
            bcs: %Sui.Rpc.V2beta.Bcs{
              name: "TransactionData",
              value: <<0, 0, 11, ...>>,
              __unknown_fields__: []
            },
            digest: "3CadAYpBgYmgDVHWrKYne2V2bfN3ZkXfELVsBtoe7jHq",
            version: 1,
            kind: %Sui.Rpc.V2beta.TransactionKind{
              kind: {:programmable_transaction, ...},
              __unknown_fields__: []
            },
            sender: "0xe193565230dd7147bf7a9155cfbe1f25eec0feea71553dd76e84c3557f2c72db",
            gas_payment: %Sui.Rpc.V2beta.GasPayment{...},
            ...
          },
          signatures: [
            %Sui.Rpc.V2beta.UserSignature{
              bcs: %Sui.Rpc.V2beta.Bcs{
                name: "UserSignatureBytes",
                value: <<0, ...>>,
                __unknown_fields__: []
              },
              scheme: :ED25519,
              signature: <<107, ...>>,
              public_key: <<...>>,
              ...
            }
          ],
          effects: nil,
          events: %Sui.Rpc.V2beta.TransactionEvents{
            bcs: %Sui.Rpc.V2beta.Bcs{name: "TransactionEvents", value: <<...>>, ...},
            digest: "6ZWN85BdqXQEogb96zMMW9YDWps9dN3N4kf1CSrGr8Gj",
            events: [...],
            ...
          },
          checkpoint: nil,
          timestamp: nil,
          balance_changes: [],
          ...
        }}
  """
  @spec get_transaction(GetTransactionRequest.t()) ::
          {:ok, Transaction.t()} | {:error, GRPC.RPCError.t()}
  defdelegate get_transaction(request), to: ExSui.Core

  @doc """
  Gets an account owner objects.

  ## Examples
      iex> request = %Sui.Rpc.V2alpha.ListOwnedObjectsRequest{owner: "0xd7ffd0cf645b373ed9a1a055805d8eb177d8dae9de3503fb91277ae8cbdb8330"}
      iex> ExSui.get_owned_objects(request)
      {:ok,
        %Sui.Rpc.V2alpha.ListOwnedObjectsResponse{
          objects: [
            %Sui.Rpc.V2alpha.OwnedObject{
              object_id: "0x5225fac8f5836743147b80522d2e4971fa7887bb0ecfc98671662bb96ee771b0",
              version: 1,
              digest: "FuV2siUPNCH1U8SyeDX486A6tmRcZnJVuvXz1Gr4TsBP",
              owner: %Sui.Rpc.V2beta.Owner{
                kind: :ADDRESS,
                address: "0xd7ffd0cf645b373ed9a1a055805d8eb177d8dae9de3503fb91277ae8cbdb8330",
                version: nil,
                __unknown_fields__: []
              },
              object_type: "0x0000000000000000000000000000000000000000000000000000000000000002::coin::Coin<0x0000000000000000000000000000000000000000000000000000000000000002::sui::SUI>",
              balance: 30000000000000000,
              __unknown_fields__: []
            },
            %Sui.Rpc.V2alpha.OwnedObject{
              object_id: "0x75aa43338f486abfdf627789c39dcf08557699651b565a82686c561a08d46531",
              version: 1,
              digest: "HnLoqj1TmQAjuf37ABbkKGc38kbD6E4sAEhhxks6hd91",
              owner: %Sui.Rpc.V2beta.Owner{
                kind: :ADDRESS,
                address: "0xd7ffd0cf645b373ed9a1a055805d8eb177d8dae9de3503fb91277ae8cbdb8330",
                version: nil,
                __unknown_fields__: []
              },
              object_type: "0x0000000000000000000000000000000000000000000000000000000000000002::coin::Coin<0x0000000000000000000000000000000000000000000000000000000000000002::sui::SUI>",
              balance: 30000000000000000,
              __unknown_fields__: []
            },
            %Sui.Rpc.V2alpha.OwnedObject{
              object_id: "0x836d214c0b6a4dd0837dfa711f80cbd45f72c29850cc85a4aedbc562182a2c1f",
              version: 1,
              digest: "ByZ7HtqZDUHJz95qg5WRxVTZo7WUm4fXMpsGKEo8E6or",
              owner: %Sui.Rpc.V2beta.Owner{
                kind: :ADDRESS,
                address: "0xd7ffd0cf645b373ed9a1a055805d8eb177d8dae9de3503fb91277ae8cbdb8330",
                version: nil,
                __unknown_fields__: []
              },
              object_type: "0x0000000000000000000000000000000000000000000000000000000000000002::coin::Coin<0x0000000000000000000000000000000000000000000000000000000000000002::sui::SUI>",
              balance: 30000000000000000,
              __unknown_fields__: []
            },
            %Sui.Rpc.V2alpha.OwnedObject{
              object_id: "0x89b4274c3dd54b8a6f205653ef38b44215611a635a2571b41e222fa49a0e45e5",
              version: 1,
              digest: "124UUCFrehvAGYVERDj4CvPmm1FWUiFwPucGP44Hdidm",
              owner: %Sui.Rpc.V2beta.Owner{
                kind: :ADDRESS,
                address: "0xd7ffd0cf645b373ed9a1a055805d8eb177d8dae9de3503fb91277ae8cbdb8330",
                version: nil,
                __unknown_fields__: []
              },
              object_type: "0x0000000000000000000000000000000000000000000000000000000000000002::coin::Coin<0x0000000000000000000000000000000000000000000000000000000000000002::sui::SUI>",
              balance: 30000000000000000,
              __unknown_fields__: []
            },
            %Sui.Rpc.V2alpha.OwnedObject{
              object_id: "0xb260732567da7f5f7e5674c49c25071e81d396120591178ecd738fe6c23bff57",
              version: 1,
              digest: "2hhMU3bxvB8qUWvZQBAmidh16j9FBkVwwfBmdq6drShW",
              owner: %Sui.Rpc.V2beta.Owner{
                kind: :ADDRESS,
                address: "0xd7ffd0cf645b373ed9a1a055805d8eb177d8dae9de3503fb91277ae8cbdb8330",
                version: nil,
                __unknown_fields__: []
              },
              object_type: "0x0000000000000000000000000000000000000000000000000000000000000002::coin::Coin<0x0000000000000000000000000000000000000000000000000000000000000002::sui::SUI>",
              balance: 30000000000000000,
              __unknown_fields__: []
            }
          ],
          next_page_token: nil,
          __unknown_fields__: []
        }}
  """
  @spec get_owned_objects(ListOwnedObjectsRequest.t()) ::
          {:ok, ListOwnedObjectsResponse.t()} | {:error, GRPC.RPCError.t()}
  defdelegate get_owned_objects(request), to: ExSui.Core

  @doc """
  Gets coins of some type owned by an address.

  ## Examples
      iex> request = %ExSui.Types.GetCoinsOptions{address: "0xd7ffd0cf645b373ed9a1a055805d8eb177d8dae9de3503fb91277ae8cbdb8330", coin_type: "0x2::sui::SUI"}
      iex> ExSui.get_coins(request)
      {:ok,
        %Sui.Rpc.V2alpha.ListOwnedObjectsResponse{
          objects: [
            %Sui.Rpc.V2alpha.OwnedObject{
              object_id: "0x5225fac8f5836743147b80522d2e4971fa7887bb0ecfc98671662bb96ee771b0",
              version: 1,
              digest: "FuV2siUPNCH1U8SyeDX486A6tmRcZnJVuvXz1Gr4TsBP",
              owner: %Sui.Rpc.V2beta.Owner{
                kind: :ADDRESS,
                address: "0xd7ffd0cf645b373ed9a1a055805d8eb177d8dae9de3503fb91277ae8cbdb8330",
                version: nil,
                __unknown_fields__: []
              },
              object_type: "0x0000000000000000000000000000000000000000000000000000000000000002::coin::Coin<0x0000000000000000000000000000000000000000000000000000000000000002::sui::SUI>",
              balance: 30000000000000000,
              __unknown_fields__: []
            },
            %Sui.Rpc.V2alpha.OwnedObject{
              object_id: "0x75aa43338f486abfdf627789c39dcf08557699651b565a82686c561a08d46531",
              version: 1,
              digest: "HnLoqj1TmQAjuf37ABbkKGc38kbD6E4sAEhhxks6hd91",
              owner: %Sui.Rpc.V2beta.Owner{
                kind: :ADDRESS,
                address: "0xd7ffd0cf645b373ed9a1a055805d8eb177d8dae9de3503fb91277ae8cbdb8330",
                version: nil,
                __unknown_fields__: []
              },
              object_type: "0x0000000000000000000000000000000000000000000000000000000000000002::coin::Coin<0x0000000000000000000000000000000000000000000000000000000000000002::sui::SUI>",
              balance: 30000000000000000,
              __unknown_fields__: []
            },
            %Sui.Rpc.V2alpha.OwnedObject{
              object_id: "0x836d214c0b6a4dd0837dfa711f80cbd45f72c29850cc85a4aedbc562182a2c1f",
              version: 1,
              digest: "ByZ7HtqZDUHJz95qg5WRxVTZo7WUm4fXMpsGKEo8E6or",
              owner: %Sui.Rpc.V2beta.Owner{
                kind: :ADDRESS,
                address: "0xd7ffd0cf645b373ed9a1a055805d8eb177d8dae9de3503fb91277ae8cbdb8330",
                version: nil,
                __unknown_fields__: []
              },
              object_type: "0x0000000000000000000000000000000000000000000000000000000000000002::coin::Coin<0x0000000000000000000000000000000000000000000000000000000000000002::sui::SUI>",
              balance: 30000000000000000,
              __unknown_fields__: []
            },
            %Sui.Rpc.V2alpha.OwnedObject{
              object_id: "0x89b4274c3dd54b8a6f205653ef38b44215611a635a2571b41e222fa49a0e45e5",
              version: 1,
              digest: "124UUCFrehvAGYVERDj4CvPmm1FWUiFwPucGP44Hdidm",
              owner: %Sui.Rpc.V2beta.Owner{
                kind: :ADDRESS,
                address: "0xd7ffd0cf645b373ed9a1a055805d8eb177d8dae9de3503fb91277ae8cbdb8330",
                version: nil,
                __unknown_fields__: []
              },
              object_type: "0x0000000000000000000000000000000000000000000000000000000000000002::coin::Coin<0x0000000000000000000000000000000000000000000000000000000000000002::sui::SUI>",
              balance: 30000000000000000,
              __unknown_fields__: []
            },
            %Sui.Rpc.V2alpha.OwnedObject{
              object_id: "0xb260732567da7f5f7e5674c49c25071e81d396120591178ecd738fe6c23bff57",
              version: 1,
              digest: "2hhMU3bxvB8qUWvZQBAmidh16j9FBkVwwfBmdq6drShW",
              owner: %Sui.Rpc.V2beta.Owner{
                kind: :ADDRESS,
                address: "0xd7ffd0cf645b373ed9a1a055805d8eb177d8dae9de3503fb91277ae8cbdb8330",
                version: nil,
                __unknown_fields__: []
              },
              object_type: "0x0000000000000000000000000000000000000000000000000000000000000002::coin::Coin<0x0000000000000000000000000000000000000000000000000000000000000002::sui::SUI>",
              balance: 30000000000000000,
              __unknown_fields__: []
            }
          ],
          next_page_token: nil,
          __unknown_fields__: []
        }}
  """
  @spec get_coins(GetCoinsOptions.t()) ::
          {:ok, ListOwnedObjectsResponse.t()} | {:error, GRPC.RPCError.t()}
  defdelegate get_coins(request), to: ExSui.Core

  @doc """
  Gets a batch of objects by their object id.

  ## Examples
      iex> request = %Sui.Rpc.V2beta.BatchGetObjectsRequest{requests: [%{object_id: ""}], read_mask: %{paths: ["owner", "object_type", "bcs", "digest", "version", "object_id"]}}
      iex> ExSui.get_objects(request)
      {:ok,
        %Sui.Rpc.V2beta.BatchGetObjectsResponse{
          objects: [
            %Sui.Rpc.V2beta.Object{
              bcs: %Sui.Rpc.V2beta.Bcs{
                name: "Object",
                value: <<0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 40, 82, 37, 250, 200, 245,
                  131, 103, 67, 20, 123, 128, 82, 45, 46, 73, 113, 250, 120, 135, 187,
                  14, 207, 201, 134, 113, 102, 43, 185, 110, 231, 113, ...>>,
                __unknown_fields__: []
              },
              object_id: "0x5225fac8f5836743147b80522d2e4971fa7887bb0ecfc98671662bb96ee771b0",
              version: 1,
              digest: "FuV2siUPNCH1U8SyeDX486A6tmRcZnJVuvXz1Gr4TsBP",
              owner: %Sui.Rpc.V2beta.Owner{
                kind: :ADDRESS,
                address: "0xd7ffd0cf645b373ed9a1a055805d8eb177d8dae9de3503fb91277ae8cbdb8330",
                version: nil,
                __unknown_fields__: []
              },
              object_type: "0x0000000000000000000000000000000000000000000000000000000000000002::coin::Coin<0x0000000000000000000000000000000000000000000000000000000000000002::sui::SUI>",
              has_public_transfer: nil,
              contents: nil,
              modules: [],
              type_origin_table: [],
              linkage_table: [],
              previous_transaction: nil,
              storage_rebate: nil,
              json: nil,
              __unknown_fields__: []
            }
          ],
          __unknown_fields__: []
        }}
  """
  @spec get_objects(BatchGetObjectsRequest.t()) ::
          {:ok, BatchGetObjectsResponse.t()} | {:error, GRPC.RPCError.t()}
  defdelegate get_objects(request), to: ExSui.Core

  @doc """
  Gets an object by its object id.

  ## Examples
      iex> request = %Sui.Rpc.V2beta.GetObjectRequest{object_id: "0x5225fac8f5836743147b80522d2e4971fa7887bb0ecfc98671662bb96ee771b0", read_mask: %{paths: ["owner", "object_type", "bcs", "digest", "version", "object_id"]}}
      iex> ExSui.get_object(request)
      {:ok,
        %Sui.Rpc.V2beta.Object{
          bcs: %Sui.Rpc.V2beta.Bcs{
            name: "Object",
            value: <<0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 40, 82, 37, 250, 200, 245, 131,
              103, 67, 20, 123, 128, 82, 45, 46, 73, 113, 250, 120, 135, 187, 14, 207,
              201, 134, 113, 102, 43, 185, 110, 231, 113, 176, 0, ...>>,
            __unknown_fields__: []
          },
          object_id: "0x5225fac8f5836743147b80522d2e4971fa7887bb0ecfc98671662bb96ee771b0",
          version: 1,
          digest: "FuV2siUPNCH1U8SyeDX486A6tmRcZnJVuvXz1Gr4TsBP",
          owner: %Sui.Rpc.V2beta.Owner{
            kind: :ADDRESS,
            address: "0xd7ffd0cf645b373ed9a1a055805d8eb177d8dae9de3503fb91277ae8cbdb8330",
            version: nil,
            __unknown_fields__: []
          },
          object_type: "0x0000000000000000000000000000000000000000000000000000000000000002::coin::Coin<0x0000000000000000000000000000000000000000000000000000000000000002::sui::SUI>",
          has_public_transfer: nil,
          contents: nil,
          modules: [],
          type_origin_table: [],
          linkage_table: [],
          previous_transaction: nil,
          storage_rebate: nil,
          json: nil,
          __unknown_fields__: []
        }}
  """
  @spec get_object(GetObjectRequest.t()) ::
          {:ok, Object.t()} | {:error, GRPC.RPCError.t()}
  defdelegate get_object(request), to: ExSui.Core

  @doc """
  Attempts to simulate a transaction execution.

  ## Examples
      iex> transaction = %{}
      iex> request = %Sui.Rpc.V2alpha.SimulateTransactionRequest{transaction, read_mask: %{paths: ["transaction.digest", "transaction.transaction", "transaction.effects", "transaction.signatures"]}}
      iex> ExSui.dry_run_transaction(request)
  """
  @spec dry_run_transaction(SimulateTransactionRequest.t()) ::
          {:ok, SimulateTransactionResponse.t()} | {:error, GRPC.RPCError.t()}
  defdelegate dry_run_transaction(request), to: ExSui.Core

  @doc """
  Executes a transaction.

  ## Examples
      iex> transaction = %{}
      iex> request = %Sui.Rpc.V2beta.ExecuteTransactionRequest{transaction, read_mask: %{paths: ["transaction.digest", "transaction.transaction", "transaction.effects", "transaction.signatures"]}}
      iex> ExSui.execute_transaction(request)
  """
  @spec execute_transaction(ExecuteTransactionRequest.t()) ::
          {:ok, ExecuteTransactionResponse.t()} | {:error, GRPC.RPCError.t()}
  defdelegate execute_transaction(request), to: ExSui.Core

  @doc """
  Gets an object's dynamic fields.

  ## Examples
      iex> request = %Sui.Rpc.V2alpha.ListDynamicFieldsRequest{parent: ""}
      iex> ExSui.get_dynamic_fields(request)
  """
  @spec get_dynamic_fields(ListDynamicFieldsRequest.t()) ::
          {:ok, ListDynamicFieldsResponse.t()} | {:error, GRPC.RPCError.t()}
  defdelegate get_dynamic_fields(request), to: ExSui.Core
end
