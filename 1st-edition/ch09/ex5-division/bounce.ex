defmodule Bounce do
  def report do
    receive do
      x -> IO.puts("Divided to #{x / 2}")
      report()
    end
  end
end

