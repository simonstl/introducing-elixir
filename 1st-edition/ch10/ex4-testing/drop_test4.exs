ExUnit.start

defmodule DropTest do
  use ExUnit.Case, async: true
  
  test "Zero distance gives zero velocity" do
    assert Drop.fall_velocity(:earth,0) == 0
  end
  
  test "Mars calculation correct" do
    assert Drop.fall_velocity(:mars, 10) == :math.sqrt(2 * 3.71 * 10)
  end
  
  test "Unknown planemo causes error" do
    assert_raise CaseClauseError, fn ->
      Drop.fall_velocity(:planetX, 10)
    end
  end
  
  test "Negative distance causes error" do
    assert_raise ArithmeticError, fn ->
      Drop.fall_velocity(:earth, -10)
    end
  end

 end


  
