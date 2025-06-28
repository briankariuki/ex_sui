defmodule ExSui.Client do
  @moduledoc """
  Sui gRPC client
  """

  use GenServer
  require Logger

  defstruct [:channel, :host, :status]

  def start_link(_) do
    GenServer.start_link(__MODULE__, :ok, name: __MODULE__)
  end

  def channel, do: GenServer.call(__MODULE__, :channel)

  @impl true
  def init(_) do
    # # {GRPC.Stub,
    # #  [endpoint: "https://sui-testnet-rpc.publicnode.com", port: 9000, scheme: :https]}

    {:ok, nil, {:continue, :connect}}
  end

  @impl true
  def handle_continue(:connect, state) do
    cred = %GRPC.Credential{
      ssl: [
        verify: :verify_peer,
        depth: 99,
        cacert_file: CAStore.file_path()
      ]
    }

    host = "fullnode.testnet.sui.io:443"
    interceptors = [{GRPC.Client.Interceptors.Logger, level: :debug}]

    Logger.debug("Connecting to Sui gRPC at #{host}")

    case GRPC.Stub.connect(host,
           adapter: GRPC.Client.Adapters.Gun,
           cred: cred,
           interceptors: interceptors
           #  headers: headers
         ) do
      {:ok, channel} ->
        state = %__MODULE__{
          channel: channel,
          status: :connected,
          host: host
        }

        Logger.debug("Connected to Sui gRPC at #{host}")

        {:noreply, state}

      {:error, error} ->
        Logger.error("Failed to connect: #{inspect(error)}. Retrying in 5 seconds")

        Process.sleep(5_000)
        {:noreply, state, {:continue, :connect}}
    end
  end

  @impl true
  def handle_call(:channel, _from, state), do: {:reply, state.channel, state}
end
