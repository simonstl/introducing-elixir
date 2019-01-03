defmodule ListDrop do
  def falls(list) do
    falls(list, [])
  end

  def falls([head|tail], results) do
    falls(tail, [Drop.fall_velocity(head) | results])
  end
  
  def falls([], results) do
    Enum.reverse(results)
  end
end
