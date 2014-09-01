defmodule Drop2 do

  def fall_velocity(planemo, distance) when distance >= 0 do
    gravity = case planemo do
     :earth -> 9.8
     :moon  -> 1.6
     :mars  -> 3.71
    end

    velocity = :math.sqrt(2 * gravity * distance)
    
   cond do
      velocity == 0 -> :stable
      velocity < 5 -> :slow
      velocity < 10 -> :moving
      velocity < 20 -> :fast
      true  -> :speedy
    end
  end
  
end
