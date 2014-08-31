defmodule Drop do

  def fall_velocity(planemo, distance) when distance >= 0 do
    gravity = case planemo do
     :earth -> 9.8
     :moon  -> 1.6
     :mars  -> 3.71
    end
    :math.sqrt(2 * gravity * distance)
  end
  
end