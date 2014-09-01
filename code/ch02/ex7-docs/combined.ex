defmodule Combined do
  @moduledoc """
  Functions calculating velocities achieved by objects dropped in a vacuum.
 
  from *Introducing Elixir*, O'Reilly Media, Inc., 2014.
  Copyright 2014 by Simon St.Laurent and J. David Eisenberg.
  """
  @vsn 0.1

  import Convert
  @doc """
  Given a height in meters, calculate the velocity in miles
  per hour for that object when droped in earth's gravitational
  field.
  """
  @spec height_to_mph(number()) :: number()

  def height_to_mph(meters) do
    mps_to_mph(Drop.fall_velocity(meters))
  end
end
