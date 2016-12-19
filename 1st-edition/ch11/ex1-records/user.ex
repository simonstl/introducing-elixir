defmodule User do
  require Record;
  Record.defrecord :user, [name: "José", age: "25"]
end