# convenience functions!
defmodule Combined do
  def height_to_mph(meters) do #takes meters, returns miles per hour
    Convert.mps_to_mph(Drop.fall_velocity(meters))
  end
end
