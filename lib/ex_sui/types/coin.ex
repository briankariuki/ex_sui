defmodule ExSui.Types.GetCoinsOptions do
  @moduledoc """
  Request options for getting address owned coins from `Sui.Rpc.V2alpha.ListOwnedObjectsRequest`
  """

  @enforce_keys [:address, :coin_type]
  @fields quote(
            do: [
              address: String.t(),
              coin_type: String.t(),
              limit: integer() | nil,
              cursor: String.t() | nil
            ]
          )
  @derive []
  defstruct Keyword.keys(@fields)

  @type t() :: %__MODULE__{unquote_splicing(@fields)}
end
