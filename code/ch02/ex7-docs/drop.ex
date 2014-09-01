defmodule Drop do

  @moduledoc """
  Functions calculating velocities achieved by objects dropped in a vacuum.
  
  from *Introducing Elixir*, O'Reilly Media, Inc., 2014.
  Copyright 2014 by Simon St.Laurent and J. David Eisenberg.
"""

  @vsn 0.1

  @doc """ 
Calculates the velocity of an object falling on Earth
as if it were in a vacuum (no air resistance).  The distance is
the height from which the object falls, specified in meters,
and the function returns a velocity in meters per second.
"""

@spec fall_velocity(number) :: number

  def fall_velocity(distance) do
    :math.sqrt(2 * 9.8 * distance)
  end
end
