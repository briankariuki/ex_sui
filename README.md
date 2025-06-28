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

