defmodule DiaTest do

  @spec manipulate({atom(), number()}) :: number()
  def manipulate({op, n}) do
    if op == :add do
      n + 1
    else
      n - 1
    end
  end

  def calculate() do
    x = manipulate({:add, 3})
    y = manipulate({4, :sub})
    IO.puts("Values #{x}, #{y}.")
  end
end
