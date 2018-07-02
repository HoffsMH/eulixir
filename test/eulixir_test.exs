defmodule EulixirTest do
  use ExUnit.Case
  doctest Eulixir

  test "greets the world" do
    assert Eulixir.hello() == :world
  end
end
