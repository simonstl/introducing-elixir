defmodule Multiply do
  require Dynamic

  Dynamic.create_multiplier(:double, 2)
  Dynamic.create_multiplier(:triple, 3)
   
  def example do
    x = triple(12)
    IO.puts("Twelve times 3 is #{x}")
  end

end

