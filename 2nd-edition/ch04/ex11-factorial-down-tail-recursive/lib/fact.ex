defmodule Fact do

  def factorial(n) do
    factorial(n, 1)
  end

  defp factorial(current, result) when current > 1 do
    new_result = current * result
    IO.puts("#{current} yields #{new_result}.")
    factorial(current - 1, new_result)
  end

  defp factorial(_current, result) do
    IO.puts("finished!")
    result
  end

end