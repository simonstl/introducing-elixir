defmodule MphDrop do

  def mph_drop() do
    drop_process = spawn(Drop, :drop, [])
    convert(drop_process)
  end
  
  def convert(drop_process) do
    receive do
      {planemo, distance} ->
        send(drop_process, {self(), planemo, distance})
        convert(drop_process)
      {planemo, distance, velocity} ->
        mph_velocity = 2.23693629 * velocity
        IO.puts("On #{planemo}, a fall of #{distance} meters yields a velocity of #{mph_velocity} mph.")
        convert(drop_process)
    end
  end
end
