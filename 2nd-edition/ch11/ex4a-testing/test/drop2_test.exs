defmodule Drop2Test do
  use ExUnit.Case

  test "Earth calculation correct" do
    calculated = Drop.fall_velocity(:earth, 1)
    assert_in_delta calculated, 4.4, 0.05,
      "Result of #{calculated} is not within 0.05 of 4.4"
  end
end
