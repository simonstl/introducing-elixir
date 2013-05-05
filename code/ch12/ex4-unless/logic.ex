defmodule Logic do

  defmacro unless(condition, code) do
    quote do
      if !(unquote(condition)) do
        unquote(code)
      end
    end
  end

end
