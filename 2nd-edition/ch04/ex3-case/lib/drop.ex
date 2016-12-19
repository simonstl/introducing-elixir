defmodule Drop do

  def fall_velocity(planemo, distance)  do
    gravity = case planemo do
     :earth when distance >= 0 -> 9.8
     :moon when distance >= 0  -> 1.6
     :mars when distance >= 0  -> 3.71
    end
    :math.sqrt(2 * gravity * distance)
  end

end
