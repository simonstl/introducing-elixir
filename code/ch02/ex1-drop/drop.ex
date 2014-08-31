defmodule Drop do
  def fall_velocity(distance) do
    :math.sqrt(2 * 9.8 * distance)
  end
  
  def mps_to_mph(mps) do
   2.23693629 * mps
  end

  def mps_to_kph(mps) do
   3.6 * mps
  end
  
end


