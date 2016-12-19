defmodule Drop do
  def fall_velocity(planemo, distance) do
    gravity = case planemo do
      :earth -> 9.8
      :moon -> 1.6
      :mars -> 3.71
    end
    try do
      :math.sqrt(2 * gravity * distance)
    rescue
      _error -> _error
    end
  end
end