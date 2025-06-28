# ExSui

An Elixir library to interface with the Sui blockchain using gRPC. This library is an alpha version.
[Sui](https://sui.io/) is a Layer 1 blockchain designed for near-instant, low-cost transactions with parallel processing and optimized scalability, making it ideal for DeFi, NFTs, and gaming. Sui uses [Move](https://sui.io/move), a smart contract language designed for safety and efficiency. Unlike traditional smart contract languages like Solidity, Move is built with security in mind, minimizing common vulnerabilities such as reentrancy attacks and ensuring better resource management.


## Getting Started

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `ex_sui` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:ex_sui, "~> 0.1.0"}
  ]
end
```

## Usage
In iex you can access base methods in the ExSui module. For example,

Get a transaction's details

```elixir
iex> transaction = %Sui.Rpc.V2beta.GetTransactionRequest{digest: "sp9rx3yRjDxfTbmA4xoU5FDw5233Y1S3pVaRdg8UzyJ", read_mask: %{paths: ["digest", "signatures", "events", "transaction"]}}

iex> ExSui.Core.get_transaction(transaction)
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

