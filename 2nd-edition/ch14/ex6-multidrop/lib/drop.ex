defmodule Drop do
  require FunctionMaker

  FunctionMaker.create_functions([{:mercury, 3.7}, {:venus, 8.9},
    {:earth, 9.8}, {:moon, 1.6}, {:mars, 3.7},
    {:jupiter, 23.1}, {:saturn, 9.0}, {:uranus, 8.7},
    {:neptune, 11.0}, {:pluto, 0.6}])
 
 end
