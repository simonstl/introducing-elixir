defmodule BadDouble do

  defmacro double(x) do
    quote do: 2 * x
  end

end

