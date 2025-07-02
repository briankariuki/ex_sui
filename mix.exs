defmodule ExSui.MixProject do
  use Mix.Project

  @name :ex_sui
  @version "0.1.0"
  @description "ExSui is a comprehensive Elixir library that provides a high-performance, type-safe interface for interacting with the Sui blockchain through its native gRPC API."
  @github_url "https://github.com/briankariuki/ex_sui"

  def project do
    [
      app: @name,
      version: @version,
      version: "0.1.0",
      elixir: "~> 1.17",
      start_permanent: Mix.env() == :prod,
      package: package(),
      deps: deps(),
      docs: docs(),
      aliases: aliases()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {ExSui.Application, []}
    ]
  end

  defp deps do
    [
      # {:protobuf, "~> 0.14.1"},
      {:protobuf, git: "https://github.com/elixir-protobuf/protobuf.git", override: true},
      {:jason, "~> 1.4"},
      {:grpc, "~> 0.10"},
      {:castore, "~> 1.0"},
      {:ex_doc, "~> 0.38", only: :dev, runtime: false},
      {:b58, "~> 1.0.2"}
    ]
  end

  defp package() do
    [
      maintainers: ["Brian Kariuki"],
      description: @description,
      licenses: ["MIT"],
      links: %{Github: @github_url},
      files: ~w(mix.exs lib .formatter.exs LICENSE.md  README.md)
    ]
  end

  def docs() do
    [
      homepage_url: @github_url,
      source_url: @github_url,
      source_ref: "v#{@version}",
      main: "readme",
      extras: [
        "README.md": [title: "Guide"],
        "LICENSE.md": [title: "License"]
      ]
    ]
  end

  defp aliases() do
    [
      docs: ["docs"]
    ]
  end
end
