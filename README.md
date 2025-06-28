# ExSui

ExSui is a comprehensive Elixir library that provides a high-performance, type-safe interface for interacting with the 
[Sui](https://sui.io/) blockchain through its native [gRPC API](https://docs.sui.io/concepts/grpc-overview). This library is a work in progress.

[Sui](https://sui.io/) is a Layer 1 blockchain designed for near-instant, low-cost transactions with parallel processing and optimized scalability, making it ideal for DeFi, NFTs, and gaming. Sui uses [Move](https://sui.io/move), a smart contract language designed for safety and efficiency. Unlike traditional smart contract languages like Solidity, Move is built with security in mind, minimizing common vulnerabilities such as reentrancy attacks and ensuring better resource management.


## Getting Started

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `ex_sui` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:ex_sui, git: "https://github.com/briankariuki/ex_sui.git"}
  ]
end
```

## Usage
In iex you can access base methods in the `ExSui` module. For example,

Getting a transaction's details

```elixir
iex> transaction = %Sui.Rpc.V2beta.GetTransactionRequest{digest: "sp9rx3yRjDxfTbmA4xoU5FDw5233Y1S3pVaRdg8UzyJ", read_mask: %{paths: ["digest", "signatures", "events", "transaction"]}}

iex> ExSui.get_transaction(transaction)
{:ok,
 %Sui.Rpc.V2beta.ExecutedTransaction{
   digest: "sp9rx3yRjDxfTbmA4xoU5FDw5233Y1S3pVaRdg8UzyJ",
   transaction: %Sui.Rpc.V2beta.Transaction{
     bcs: %Sui.Rpc.V2beta.Bcs{
       name: "TransactionData",
       value: <<0, 0, 5, ...>>,
       __unknown_fields__: []
     },
     digest: "sp9rx3yRjDxfTbmA4xoU5FDw5233Y1S3pVaRdg8UzyJ",
     version: 1,
     kind: %Sui.Rpc.V2beta.TransactionKind{
       kind: {:programmable_transaction, ...},
       __unknown_fields__: []
     },
     sender: "0x7afd2906726498dd5395dc26ec563ce22aa502200c0fa3a69aa2d30f2b382027",
     gas_payment: %Sui.Rpc.V2beta.GasPayment{...},
     ...
   },
   signatures: [
     %Sui.Rpc.V2beta.UserSignature{
       bcs: %Sui.Rpc.V2beta.Bcs{
         name: "UserSignatureBytes",
         value: <<5, ...>>,
         __unknown_fields__: []
       },
       scheme: :ZKLOGIN,
       signature: nil,
       public_key: nil,
       ...
     }
   ],
   effects: nil,
   events: %Sui.Rpc.V2beta.TransactionEvents{
     bcs: %Sui.Rpc.V2beta.Bcs{name: "TransactionEvents", value: <<...>>, ...},
     digest: "8yyjrqPFKX7WVMFkJdVCAavWaZKDmp1k6sGeBsh9db81",
     events: [...],
     ...
   },
   checkpoint: nil,
   timestamp: nil,
   balance_changes: [],
   ...
 }}

```

Getting the current checkpoint details
```elixir
iex> request = %Sui.Rpc.V2beta.GetCheckpointRequest{read_mask: %{paths: ["summary", "digest", "sequence_number"]}}
iex> ExSui.get_checkpoint(request)
{:ok,
 %Sui.Rpc.V2beta.Checkpoint{
   sequence_number: 213034443,
   digest: "Bf1DgoFuknnAjd5SC1h3Ve6aAhGxvmpuh1gGDAakWGUk",
   summary: %Sui.Rpc.V2beta.CheckpointSummary{
     bcs: %Sui.Rpc.V2beta.Bcs{
       name: "CheckpointSummary",
       value: <<11, 3, 0, 0, 0, 0, 0, 0, 203, 165, 178, 12, 0, 0, 0, 0, 62, 47,
         10, 156, 0, 0, 0, 0, 32, 78, 75, 57, 28, 43, 235, 46, 138, 117, 73, 59,
         122, 171, 84, 119, 79, 93, ...>>,
       __unknown_fields__: []
     },
     digest: "Bf1DgoFuknnAjd5SC1h3Ve6aAhGxvmpuh1gGDAakWGUk",
     epoch: 779,
     sequence_number: 213034443,
     total_network_transactions: 2617913150,
     content_digest: "6GdL2k3QWfN4eicvgTEo55FfMH3QK1TRoLDoRfyN45KE",
     previous_digest: "Aqkj4bSHRoT83MjjcsxSvpMqf9qZc3dFq8xAVFekad6j",
     epoch_rolling_gas_cost_summary: %Sui.Rpc.V2beta.GasCostSummary{
       computation_cost: 1115817221792,
       storage_cost: 9846684282800,
       storage_rebate: 8752065218424,
       non_refundable_storage_fee: 88404699176,
       __unknown_fields__: []
     },
     timestamp: %Google.Protobuf.Timestamp{
       seconds: 1751141311,
       nanos: 898000000,
       __unknown_fields__: []
     },
     commitments: [],
     end_of_epoch_data: nil,
     version_specific_data: <<0, 1, 138, 102, 2, 0, 0, 0, 0, 0>>,
     __unknown_fields__: []
   },
   signature: nil,
   contents: nil,
   transactions: [],
   __unknown_fields__: []
 }}
```


## Contributing

[Download](https://github.com/protocolbuffers/protobuf?tab=readme-ov-file#protobuf-compiler-installation) and install the protocol buffer compiler (protoc).

MacOS users can install it through Homebrew by running the following command: 
```
brew install protobuf
```
Other platforms e.g. windows, linux can be installed by following the steps [here](https://github.com/protocolbuffers/protobuf?tab=readme-ov-file#protobuf-compiler-installation).

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/ex_sui>.

