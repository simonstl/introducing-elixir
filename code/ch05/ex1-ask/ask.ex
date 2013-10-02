defmodule Ask do

  def chars() do
    IO.puts(
    """
Which planemo are you on?
 1. Earth 
 2. Moon
 3. Mars
 """
    )

    IO.getn("Which? > ")
 
  end
end
