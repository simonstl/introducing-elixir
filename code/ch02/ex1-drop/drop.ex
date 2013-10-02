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
  
  def test_fun do
fun = function(fall_velocity/1)
    fun.(40)
  end
end

IO.puts Drop.test_fun

