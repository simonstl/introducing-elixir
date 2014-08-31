defmodule Broken do

  def bad_cond(test_val) do
  
    cond do
      test_val < 0 -> x=1
      test_val >= 0 -> y=2
    end
  
   x+y
  
  end
end