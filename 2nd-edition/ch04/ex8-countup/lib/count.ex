defmodule Count do

  def countup(limit) do
    countup(1,limit)
  end

  defp countup(count, limit) when count <= limit do
    IO.inspect(count)
    countup(count+1, limit)
  end

  # use underscore to avoid "unused variable" warnings

  defp countup(_count, _limit) do
    IO.puts("finished!")
  end

end
