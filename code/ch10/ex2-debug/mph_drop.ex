defmodule MphDrop do

  def mph_drop() do
    :erlang.process_flag(:trap_exit, true)
    drop_pid = spawn_link(Drop, :drop, [])
    convert(drop_pid)
  end
  
  def convert(pid) do
    receive do
      {planemo, distance} ->
        send(pid, {self(), planemo, distance})
        convert(pid)
      {'EXIT', _pid, _reason} ->
        new_pid = spawn_link(Drop, :drop, [])
        convert(new_pid)
      {planemo, distance, velocity} ->
        mph_velocity = 2.23693629 * velocity
        IO.puts("On #{planemo}, a fall of #{distance} meters yields a velocity of #{mph_velocity} mph.")
      convert(pid)
    end
  end
 end
