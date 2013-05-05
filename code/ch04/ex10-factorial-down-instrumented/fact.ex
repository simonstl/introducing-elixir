defmodule Fact do

  def factorial(n) when n > 1 do
    IO.puts("Calling from #{n}.")
    result = n * factorial(n-1)
    IO.puts("#{n} yields #{result}.")
    result 
  end
  
  def factorial(n) when n<=1 do
    IO.puts("Calling from 1.")
    IO.puts("1 yields 1.")  
    1
  end  
end