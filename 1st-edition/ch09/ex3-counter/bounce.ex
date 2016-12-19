defmodule Bounce do
  def report(count) do
    receive do
      msg -> IO.puts("Received #{count}: #{msg}")
      report(count + 1)
    end
  end
end
