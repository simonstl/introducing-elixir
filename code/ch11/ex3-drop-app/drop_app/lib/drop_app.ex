defmodule DropApp do
  use Application.Behaviour
  
  def start(_type, _args) do
    IO.puts("Starting the app...") # show that app is really starting.
    DropSup.start_link
  end
end
