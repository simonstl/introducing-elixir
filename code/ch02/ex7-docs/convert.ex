defmodule Convert do
  @moduledoc """
  Functions for converting units of speed.
  
  from *Introducing Elixir*, O'Reilly Media, Inc., 2014.  
  Copyright 2014 by Simon St.Laurent and J. David Eisenberg.
  """
  @vsn 0.1

  @doc """
  Accepts a velocity in meters per second as
  its argument and returns the equivalent
  velocity in miles per hour.
  """
  @spec mps_to_mph(number()) :: number()

  def mps_to_mph(mps) do
    2.23693629 * mps
  end

  @doc """
  Accepts a velocity in meters per second as
  its argument and returns the equivalent
  velocity in kilometers per hour.
  """
  @spec mps_to_kph(number()) :: number()

  def mps_to_kph(mps) do
   3.6 * mps
  end
end
