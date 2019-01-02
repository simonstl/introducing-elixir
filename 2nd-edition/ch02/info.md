```code
mix new ex1-drop --app drop
mix new ex2-split --app drop
mix new ex2-split --combined drop
mix new ex4-pipe --app combined && cd ex4-pipe && iex -S mix
mix new ex5-import --app combined && cd ex5-import && iex -S mix
mix new ex5-import-erlang --app drop && cd ex5-import-erlang && iex -S mix
mix new ex5-import-erlang1 --app drop && cd ex5-import-erlang1 && iex -S mix
mix new ex5-import-erlang2 --app drop && cd ex5-import-erlang2 && iex -S mix
mix new ex6-defaults --app drop && cd ex6-defaults && iex -S mix
mix new ex7-docs --app combined && cd ex7-docs && iex -S mix
mix new ex8-doc-functions --app combined && cd ex8-doc-functions && iex -S mix

iex -S mix
recompile
Combined.height_to_mph(20)
Drop.fall_velocity(20)
Drop.fall_velocity(20, 9.8)
Drop.fall_velocity(20, 1.6)
h Drop.fall_velocity

#set utf-8 to cmd 
chcp 65001

```

