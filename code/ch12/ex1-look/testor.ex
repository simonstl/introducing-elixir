defmodule Testor do

  defmacro do_stuff(a, b) do
    quote do
      def unquote(a)(value) do
        2 * :math.sqrt(value) * unquote(b)
      end
    end
  end
  
end

