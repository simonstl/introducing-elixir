defmodule Hof do
  def tripler(value, function) do
    3 * function.(value)
  end
end
