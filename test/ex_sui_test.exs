defmodule ExSuiTest do
  use ExUnit.Case
  doctest ExSui

  test "greets the world" do
    assert ExSui.hello() == :world
  end
end
