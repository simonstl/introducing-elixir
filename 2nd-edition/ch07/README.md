```code
planemo_list = [{:earth, 9.8}, {:moon, 1.6}, {:mars, 3.71}]
atomic_weights = [hydrogen: 1.008, carbon: 12.011, sodium: 22.99]
ages = [david: 59, simon: 40, cathy: 28, simon: 30]
d_keys = [d: 59, d: 40, d: 28, d: 30]

Keyword.get(atomic_weights, :hydrogen)
Keyword.get(atomic_weights, :neon)
Keyword.get(atomic_weights, :neon, 0)
Keyword.get(atomic_weights, :carbon, 0)
 
Keyword.fetch!(atomic_weights, :neon)

Keyword.get_values(ages, :simon)
Keyword.get_values(d_keys, :d)

Keyword.has_key?(atomic_weights, :carbon)
Keyword.has_key?(atomic_weights, :neon)

weights2 = Keyword.put_new(atomic_weights, :helium, 4.0026)
weights3 = Keyword.put_new(weights2, :helium, -1)
 
ages2 = Keyword.put(ages, :chung, 19)
ages3 = Keyword.put(ages2, :simon, 22)
 
ages4 = Keyword.delete(ages2, :simon)
ages5 = Keyword.delete_first(ages2, :simon)

atomic_info = [{:hydrogen, :H, 1.008}, {:carbon, :C, 12.011}, {:sodium, :Na, 22.99}]

List.keyfind(atomic_info, :H, 1)
List.keyfind(atomic_info, :carbon, 0)
List.keyfind(atomic_info, :fluorine, 0, {})
List.keymember?(atomic_info, :Na, 1)
List.keymember?(atomic_info, :boron, 0)

atomic_info2 = List.keystore(atomic_info, :boron, 0, {:boron, :B, 10.081})
atomic_info3 = List.keyreplace(atomic_info2, :B, 1, {:boron, :B, 10.81})
atomic_info4 = List.keydelete(atomic_info3, :fluorine, 0)

atomic_info3 = List.keyreplace(atomic_info2, :B, 1, {:boron, :Fl, 18.99})
atomic_info4 = List.keydelete(atomic_info3, :fluorine, 0)
atomic_info5 = List.keydelete(atomic_info3, :carbon, 0)
atomic_info3 = List.keyreplace(atomic_info2, :B, 1, {:zinc, :Zn, 65.38})

planemo_hash = Enum.into([earth: 9.8, moon: 1.6, mars: 3.71], HashDict.new())
HashDict.has_key?(planemo_hash, :moon)
HashDict.has_key?(planemo_hash, :jupiter) #depricated. Use Map instead
HashDict.get(planemo_hash, :jupiter) #depricated. Use Map instead
HashDict.get(planemo_hash, :jupiter, 0)

planemo_hash2 = HashDict.put_new(planemo_hash, :jupiter, 99.9)  #depricated. Use Map instead
planemo_hash3 = HashDict.put_new(planemo_hash2, :jupiter, 23.1)  #depricated. Use Map instead
planemo_hash4 = HashDict.put(planemo_hash3, :jupiter, 23.1)  #depricated. Use Map instead
planemo_hash5 = HashDict.delete(planemo_hash4,:saturn)  #depricated. Use Map instead
planemo_hash6 = HashDict.delete(planemo_hash4, :jupiter)  #depricated. Use Map instead

new_map = %{}
planemo_map = %{:earth => 9.8, :moon => 1.6, :mars => 3.71}
number_map=%{2 => "two", 3 => "three"}
planemo_map_alt = %{earth: 9.8, moon: 1.6, mars: 3.71}

altered_planemo_map = %{planemo_map | :earth => 12}

 %{planemo_map | earth: 12, mars: 3}
 %{planemo_map | :earth => 12, :mars => 3}

 extended_planemo_map = Map.put_new(planemo_map, :jupiter, 23.1)
 
 %{earth: earth_gravity} = planemo_map
 
defmodule Planemo do
 defstruct name: :nil, gravity: 0, diameter: 0, distance_from_sun: 0
end

defmodule Tower do
 defstruct location: "", height: 20, planemo: :earth, name: ""
end

```
