defmodule DropServer do
  use GenServer.Behaviour
  
  defrecord State, count: 0
  
  # This is a convenience method for startup
  def start_link do
    :gen_server.start_link({:local, __MODULE__}, __MODULE__, [], [])
  end
  
  # These are the callbacks that GenServer.Behaviour will use
  def init([]) do
    {:ok, State.new()}
  end
  
  def handle_call(_request, _from, state) do
    distance = _request
    reply = {:ok, fall_velocity(distance)}
    new_state = State.new(count: state.count + 1)
    {:reply, reply, new_state}
  end
  
  def handle_cast(_msg, state) do
    IO.puts("So far, calculated #{state.count} velocities.")
    {:noreply, state}
  end
  
  def handle_info(_info, state) do
    {:noreply, state}
  end
  
  def terminate(_reason, _state) do
    {:ok}
  end
  
  def code_change(_old_version, state, _extra) do
    {:ok, state}
  end
  
  # internal function
  def fall_velocity(distance) do
    :math.sqrt(2 * 9.8 * distance)
  end
  
end

