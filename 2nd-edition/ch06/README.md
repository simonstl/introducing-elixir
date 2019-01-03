```code
[1,2,4,8,16,32]
[1, x, 4, y] = [1, 2, 4, 8]
insert = [2, 4, 8]
full = [1, insert, 16, 32]
neat = List.flatten(full)
a = [1, 2, 4]
b = [8, 16, 32]
list_of_lists = [a, b]
combined = Enum.concat(a, b)
combined2 = a ++ b

 c = [64, 128, 256]
 Enum.concat([a, b, c])
 
 [head | tail] = [1,2,4]
 
 list = [1, 2, 4]
 [h1 | t1] = list

[head | tail] = []

Enum.reverse([a, b, c])

mix new ex1-product --app overall && cd ex1-product && iex -S mix

Overall.product([1,2,3,4])
Overall.product([])
Overall.product('hello')
#Overall.product("hello")

x = [1 | [2, 3]]
x = [1 | 2]

mix new ex2-drop --app drop && cd ex2-drop && iex -S mix
ListDrop.falls([{:earth, 20}, {:moon, 20}, {:mars, 20}])

list1 = ["Hydrogen", "Helium", "Lithium"]
list2 = ["H", "He", "Li"]
element_list = Enum.zip(list1, list2)
separate_lists = Enum.unzip(element_list)

mix new ex4-pascal --app pascal && cd ex4-pascal && iex -S mix

Pascal.add_row([0, 1, 0])
Pascal.add_row([0, 1, 1, 0])
Pascal.add_row([0, 1, 2, 1, 0])
Pascal.add_row([0, 1, 3, 3, 1, 0])
Pascal.add_row([0, 1, 4, 6, 4, 1, 0])

Pascal.triangle(4)
Pascal.triangle(6)
Pascal.triangle(13)
Pascal.triangle(60)

```
