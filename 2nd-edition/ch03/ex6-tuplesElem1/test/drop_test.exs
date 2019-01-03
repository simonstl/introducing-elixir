defmodule DropTest do
  use ExUnit.Case
  doctest Drop

  test "greets the world" do
    assert Drop.hello() == :world
  end
end
