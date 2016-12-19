defmodule Drop3Test do
  use ExUnit.Case

  test "Earth calculation correct" do
    calculated = Drop.fall_velocity(:earth, 1)
    assert_in_delta calculated, 4.4, 0.0001,
      "Result of #{calculated} is not within 0.0001 of 4.4"
  end
end
