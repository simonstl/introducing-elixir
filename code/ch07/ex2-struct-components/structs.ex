defmodule Planemo do
  defstruct name: :nil, gravity: 0, diameter: 0, distance_from_sun: 0
end

defmodule Tower do
  defstruct location: "", height: 20, planemo: :earth, name: ""
end
