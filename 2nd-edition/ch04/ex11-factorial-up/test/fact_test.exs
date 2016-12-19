defmodule FactTest do
  use ExUnit.Case
  doctest Fact

  test "the truth" do
    assert 1 + 1 == 2
  end
end
