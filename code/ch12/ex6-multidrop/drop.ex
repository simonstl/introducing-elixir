defmodule Drop do
<<<<<<< HEAD:code/ch12/ex6-multidrop/drop.ex
  require FunctionMaker

  FunctionMaker.create_functions([{:mercury, 3.7}, {:venus, 8.9},
=======
  require DropMaker

  DropMaker.create_functions([{:mercury, 3.7}, {:venus, 8.9},
>>>>>>> acba1e9f90befeb42f672aaf0b4557300b1311c8:code/ch12/ex7-multidrop/drop.ex
    {:earth, 9.8}, {:moon, 1.6}, {:mars, 3.7},
    {:jupiter, 23.1}, {:saturn, 9.0}, {:uranus, 8.7},
    {:neptune, 11.0}, {:pluto, 0.6}])

end

