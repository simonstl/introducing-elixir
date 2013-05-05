defmodule Drop do

  def drop do
    setup
    handle_drops
  end
  
  def handle_drops do
    receive do
      {from, planemo, distance} ->
        from <- {planemo, distance, fall_velocity(planemo, distance)}
        handle_drops
    end
  end
  
  def fall_velocity(planemo, distance) when distance >= 0 do
    {:atomic, [p | _]} = :mnesia.transaction(fn() ->
      :mnesia.read(Planemo, planemo) end)
    :math.sqrt(2 * p.gravity * distance)
  end
  
  def setup() do
    :mnesia.create_schema([node()])
    :mnesia.start()
    :mnesia.create_table(Planemo, [{:attributes,
      Dict.keys(Planemo.__record__(:fields))}])

      f = fn ->
      :mnesia.write(Planemo.new(name: :mercury, gravity: 3.7, diameter: 4878,
        distance_from_sun: 57.9))
      :mnesia.write(Planemo.new(name: :venus, gravity: 8.9, diameter: 12104,
        distance_from_sun: 108.2))
      :mnesia.write(Planemo.new(name: :earth, gravity: 9.8, diameter: 12756,
        distance_from_sun: 149.6))
      :mnesia.write(Planemo.new(name: :moon, gravity: 1.6, diameter: 3475,
        distance_from_sun: 149.6))
      :mnesia.write(Planemo.new(name: :mars, gravity: 3.7, diameter: 6787,
        distance_from_sun: 227.9))
      :mnesia.write(Planemo.new(name: :ceres, gravity: 0.27, diameter: 950,
        distance_from_sun: 413.7))
      :mnesia.write(Planemo.new(name: :jupiter, gravity: 23.1, diameter: 142796,
        distance_from_sun: 778.3))
      :mnesia.write(Planemo.new(name: :saturn, gravity: 9.0, diameter: 120660,
        distance_from_sun: 1427.0))
      :mnesia.write(Planemo.new(name: :uranus, gravity: 8.7, diameter: 51118,
        distance_from_sun: 2871.0))
      :mnesia.write(Planemo.new(name: :neptune, gravity: 11.0, diameter: 30200,
        distance_from_sun: 4497.1))
      :mnesia.write(Planemo.new(name: :pluto, gravity: 0.6, diameter: 2300,
        distance_from_sun: 5913.0))
      :mnesia.write(Planemo.new(name: :haumea, gravity: 0.44, diameter: 1150,
        distance_from_sun: 6484.0))
      :mnesia.write(Planemo.new(name: :makemake, gravity: 0.5, diameter: 1500,
        distance_from_sun: 6850.0))
      :mnesia.write(Planemo.new(name: :eris, gravity: 0.8, diameter: 2400,
        distance_from_sun: 10210.0))
    end

    :mnesia.transaction(f)
  end
end

