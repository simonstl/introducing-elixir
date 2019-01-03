defmodule Overall do
  def product([]) do
    0
  end

  def product(list) do
    product(list, 1)
  end

  defp product([], accumulated_product) do
    accumulated_product
  end

  defp product([head | tail], accumulated_product) do
    product(tail, head * accumulated_product)
  end
end
