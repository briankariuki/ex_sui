defmodule ExSui do
  @moduledoc """
  An Elixir library to interface with the Sui blockchain using gRPC.

  [Sui](https://sui.io/) is a Layer 1 blockchain designed for near-instant, low-cost transactions with parallel processing and optimized scalability,
  making it ideal for DeFi, NFTs, and gaming. Sui uses [Move](https://sui.io/move), a smart contract language designed for safety and efficiency.
  Unlike traditional smart contract languages like Solidity, Move is built with security in mind, minimizing common
  vulnerabilities such as reentrancy attacks and ensuring better resource management.
  """

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
  defdelegate get_checkpoint(request), to: ExSui.Core

  @doc """
  Gets a transaction details.

  ## Examples
      iex> transaction = %Sui.Rpc.V2beta.GetTransactionRequest{digest: "3CadAYpBgYmgDVHWrKYne2V2bfN3ZkXfELVsBtoe7jHq", read_mask: %{paths: ["signatures", "events", "transaction"]}}
      iex> ExSui.get_transaction(transaction)
      {:ok,
        %Sui.Rpc.V2beta.ExecutedTransaction{
          digest: nil,
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
  defdelegate get_transaction(request), to: ExSui.Core
end
