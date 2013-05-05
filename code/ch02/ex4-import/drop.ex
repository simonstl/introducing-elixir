defmodule Drop do
  def fall_velocity(distance) do
    import :default, :math, only: [sqrt: 1]  

    sqrt(2 * 9.8 * distance)
  end
end