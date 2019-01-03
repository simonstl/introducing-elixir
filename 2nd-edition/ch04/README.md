```code
mix new ex1-case --app drop && cd ex1-case && iex -S mix
mix new ex2-case --app drop && cd ex2-case && iex -S mix
mix new ex3-case --app drop && cd ex3-case && iex -S mix
mix new ex4-cond --app drop && cd ex4-cond && iex -S mix
mix new ex5-if --app drop && cd ex5-if && iex -S mix
mix new ex6-broken --app broken && cd ex6-broken && iex -S mix
mix new ex7-countdown --app count && cd ex6-broken && iex -S mix
mix new ex8-countup --app count && cd ex8-countup && iex -S mix
mix new ex9-factorial-down --app fact && cd ex9-factorial-down && iex -S mix
mix new ex10-factorial-down-instrumented --app fact && cd ex10-factorial-down-instrumented && iex -S mix
mix new ex11-factorial-down-tail-recursive --app fact && cd ex11-factorial-down-tail-recursive && iex -S mix


#set utf-8 to cmd 
chcp 65001

Drop.fall_velocity(:earth, 20)
Drop.fall_velocity(:moon, 20)
Drop.fall_velocity(:mars, 20)

x=20
if x>10 do :large end
unless x>10, do: :small, else: :large

IO.puts("Look out below!")
IO.write("Look out below!")
IO.inspect(x)

Count.countdown(2)
Count.countup(2)
Count.countup(2000000000000000000000000000000000000000000000000000000000000000000000000)

Fact.factorial(1)
Fact.factorial(3)
Fact.factorial(4)
Fact.factorial(40)
Fact.factorial(1000000)
```
