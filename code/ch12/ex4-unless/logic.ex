defmodule Logic do

  defmacro unless(condition, options) do
    quote do
      if(!unquote(condition), unquote(options))
    end  
  end

end

