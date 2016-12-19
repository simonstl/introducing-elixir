defmodule Double do

  defmacro double x do
    {:*, [], [2, x]}
  end

end
