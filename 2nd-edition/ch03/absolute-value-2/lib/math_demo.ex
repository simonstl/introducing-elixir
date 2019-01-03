defmodule MathDemo do
  def absolute_value(number) when number < 0 do
    -number
  end
  def absolute_value(number) do
    number
  end
end
