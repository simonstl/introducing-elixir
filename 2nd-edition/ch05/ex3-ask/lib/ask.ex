defmodule Ask do

  def line() do
    planemo=get_planemo()
    distance=get_distance()
    Drop.fall_velocity({planemo, distance})
  end

  defp get_planemo() do
    IO.puts("""
    Which planemo are you on?
     1. Earth
     2. Earth's Moon
     3. Mars
     """)

    IO.gets("Which? > ")
    |> String.first()
    |> char_to_planemo()
  end

defp get_distance() do
   IO.gets("How far? (meters) > ")
   |> String.strip()
   |> String.to_integer()
end

defp char_to_planemo(char) do
   case char do
       "1" -> :earth
       "2" -> :moon
       "3" -> :mars
   end
  end

end
