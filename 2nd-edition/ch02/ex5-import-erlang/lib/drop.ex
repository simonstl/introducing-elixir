defmodule Drop do
  import :math

  def fall_velocity(distance) do
    sqrt(2 * 9.8 * distance)
  end
end
