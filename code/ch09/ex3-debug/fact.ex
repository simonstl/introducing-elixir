defmodule Fact do

  def factorial(n) do
    factorial(1, n, 1)
  end
  
  def factorial(current, n, result) when current <= n do
    new_result = result * current
    IO.puts("#{current} yields #{new_result}!")
    factorial(current + 1, n, new_result)
  end
  
  def factorial(_current, _n, result) do
    IO.puts("Finished.")
    result
  end
end
