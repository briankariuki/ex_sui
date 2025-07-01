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

  alias Sui.Rpc.V2beta.Checkpoint
  alias Sui.Rpc.V2beta.GetCheckpointRequest
  alias Sui.Rpc.V2beta.GetTransactionRequest
  alias Sui.Rpc.V2beta.Transaction

  alias Sui.Rpc.V2alpha.ListOwnedObjectsRequest
  alias Sui.Rpc.V2alpha.ListOwnedObjectsResponse

  alias Sui.Rpc.V2alpha.GetBalanceRequest
  alias Sui.Rpc.V2alpha.GetBalanceResponse

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
end
