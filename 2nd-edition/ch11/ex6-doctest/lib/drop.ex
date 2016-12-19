defmodule Drop do

  @doc  """
  Calculates speed of a falling object on a given planemo
  (planetary mass object)
  
    iex(1)> Drop.fall_velocity(:earth, 10)
    14.0
    
    iex(2)> Drop.fall_velocity(:mars, 20)
    12.181953866272849
    
    iex> Drop.fall_velocity(:jupiter, 10)
    ** (CaseClauseError) no case clause matching: :jupiter
  """
  def fall_velocity(planemo, distance) do
    gravity = case planemo do
      :earth -> 9.8
      :moon -> 1.6
      :mars -> 3.71
    end
    :math.sqrt(2 * gravity * distance)
  end
end

