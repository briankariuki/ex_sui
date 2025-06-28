defmodule Mix.Tasks.ExSui.InstallSuiGrpcProtos do
  @moduledoc "Clones the sui gRPC protobuf files from their github repository"
  use Mix.Task

  require Logger

  @shortdoc "Clones Sui protobuf files to protos directory at the root of the project."
  def run(_) do
    # Clone sui repository
    with false <- maybe_folder_exists?("sui"),
         {:ok, :success} <- clone_sui_repo(),
         {:ok, :success} <- copy_sui_grpc_proto_files() do
      compile_proto_files_to_elixir()
      :ok
    else
      true ->
        # remove_folder("sui")
        # clone_sui_repo()
        copy_sui_grpc_proto_files()
        compile_proto_files_to_elixir()

      {:error, error} ->
        Logger.error("[#{__MODULE__}] #{error}")
    end
  end

  defp clone_sui_repo do
    case System.cmd("git", ["clone", "https://github.com/MystenLabs/sui.git", "--depth=1"]) do
      {_output, 0} ->
        Logger.info("[#{__MODULE__}] Clone Sui Repository successful")
        {:ok, :success}

      {error, exit_code} ->
        {:error, "Clone failed with exit code #{exit_code}: #{error}"}
    end
  end

  defp compile_proto_files_to_elixir() do
    proto_files = Path.wildcard("./protos/sui/rpc/v2beta2/*.proto")
    google_files = Path.wildcard("./protos/google/rpc/*.proto")
    Logger.info("[#{__MODULE__}] Found Sui #{Enum.count(proto_files)} proto files")
    Logger.info("[#{__MODULE__}] Found Google #{Enum.count(google_files)} proto files")

    case maybe_folder_exists?("./lib/generated") do
      true ->
        remove_folder("./lib/generated")
        create_folder("./lib/generated")

      _ ->
        create_folder("./lib/generated")
    end

    System.cmd(
      "protoc",
      [
        "--elixir_out=gen_descriptors=true,one_file_per_module=true,plugins=grpc:./lib/generated",
        "--elixir_opt=include_docs=true",
        "--proto_path=./protos",
        "--proto_path=./protos/google",
        "--proto_path=./protos/sui"
      ] ++ proto_files ++ google_files
    )
  end

  defp copy_sui_grpc_proto_files do
    if maybe_folder_exists?("protos") do
      remove_folder("protos")
    end

    case System.cmd("cp", ["-r", "sui/crates/sui-rpc-api/proto", "./protos"]) do
      {_output, 0} ->
        Logger.info("[#{__MODULE__}] Copy Sui gRPC proto files successful")
        {:ok, :success}

      {error, exit_code} ->
        {:error, "Copy failed with exit code #{exit_code}: #{error}"}
    end
  end

  defp maybe_folder_exists?(folder) do
    File.dir?(folder)
  end

  defp create_folder(folder) do
    File.mkdir(folder)
  end

  defp remove_folder(folder) do
    System.cmd("rm", ["-rf", folder])
  end
end
