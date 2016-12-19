defmodule Fact do

  def factorial(n) when n > 1 do
    n * factorial(n-1)
  end

  def factorial(n) when n <= 1 do
    1
  end
end