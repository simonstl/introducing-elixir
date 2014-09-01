defmodule MphDrop do
  def mph_drop do
    drop_pid = spawn_link(Drop, :drop, [])
    convert(drop_pid)
  end
  
  def convert(drop_pid) do
    receive do
      {planemo, distance} ->
        send(drop_pid, {self(), planemo, distance})
        convert(drop_pid)
      {planemo, distance, velocity} ->
        mph_velocity = 2.23693629 * velocity
        IO.puts("On #{planemo}, a fall of #{distance} meters")
        IO.puts("yields a velocity of #{mph_velocity} mph.")
        convert(drop_pid)
    end
  end
end
