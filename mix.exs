defmodule ExSui.MixProject do
  use Mix.Project

  def project do
    [
      app: :ex_sui,
      version: "0.1.0",
      elixir: "~> 1.17",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {ExSui.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:protobuf, "~> 0.14.1"},
      {:protobuf, git: "https://github.com/elixir-protobuf/protobuf.git", override: true},
      {:jason, "~> 1.4"},
      {:grpc, "~> 0.10"},
      {:castore, "~> 1.0"}
    ]
  end
end
