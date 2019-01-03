```code
mix new ex1-case --app drop && cd ex1-case && iex -S mix
mix new ex2-case --app drop && cd ex2-case && iex -S mix
mix new ex3-case --app drop && cd ex3-case && iex -S mix
mix new ex4-cond --app drop && cd ex4-cond && iex -S mix
mix new ex5-if --app drop && cd ex5-if && iex -S mix
mix new ex6-broken --app drop && cd ex6-broken && iex -S mix

#set utf-8 to cmd 
chcp 65001

Drop.fall_velocity(:earth, 20)
Drop.fall_velocity(:moon, 20)
Drop.fall_velocity(:mars, 20)

x=20
if x>10 do :large end
unless x>10, do: :small, else: :large
```
