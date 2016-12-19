defmodule Drop do

  require Planemo

  def drop do
    setup
    handle_drops
  end

  def handle_drops do
    receive do
      {from, planemo, distance} ->
        send(from, {planemo, distance, fall_velocity(planemo, distance)})
        handle_drops
    end
  end

  def fall_velocity(planemo, distance) when distance >= 0 do
    {:atomic, [p | _]} = :mnesia.transaction(fn() ->
      :mnesia.read(PlanemoTable, planemo) end)
    :math.sqrt(2 * Planemo.planemo(p, :gravity) * distance)
  end

  def setup do
    :mnesia.create_schema([node()])
    :mnesia.start()
    :mnesia.create_table(PlanemoTable, [{:attributes,
      [:name, :gravity, :diameter, :distance_from_sun]},
      {:record_name, :planemo}])

      f = fn ->
      :mnesia.write(PlanemoTable, Planemo.planemo(name: :mercury, gravity: 3.7,
        diameter: 4878, distance_from_sun: 57.9), :write)
      :mnesia.write(PlanemoTable, Planemo.planemo(name: :venus, gravity: 8.9,
        diameter: 12104, distance_from_sun: 108.2), :write)
      :mnesia.write(PlanemoTable, Planemo.planemo(name: :earth, gravity: 9.8,
        diameter: 12756, distance_from_sun: 149.6), :write)
      :mnesia.write(PlanemoTable, Planemo.planemo(name: :moon, gravity: 1.6,
        diameter: 3475, distance_from_sun: 149.6), :write)
      :mnesia.write(PlanemoTable, Planemo.planemo(name: :mars, gravity: 3.7,
        diameter: 6787, distance_from_sun: 227.9), :write)
      :mnesia.write(PlanemoTable, Planemo.planemo(name: :ceres, gravity: 0.27,
        diameter: 950, distance_from_sun: 413.7), :write)
      :mnesia.write(PlanemoTable, Planemo.planemo(name: :jupiter, gravity: 23.1,
        diameter: 142796, distance_from_sun: 778.3), :write)
      :mnesia.write(PlanemoTable, Planemo.planemo(name: :saturn, gravity: 9.0,
        diameter: 120660, distance_from_sun: 1427.0), :write)
      :mnesia.write(PlanemoTable, Planemo.planemo(name: :uranus, gravity: 8.7,
        diameter: 51118, distance_from_sun: 2871.0), :write)
      :mnesia.write(PlanemoTable, Planemo.planemo(name: :neptune, gravity: 11.0,
        diameter: 30200, distance_from_sun: 4497.1), :write)
      :mnesia.write(PlanemoTable, Planemo.planemo(name: :pluto, gravity: 0.6,
        diameter: 2300, distance_from_sun: 5913.0), :write)
      :mnesia.write(PlanemoTable, Planemo.planemo(name: :haumea, gravity: 0.44,
        diameter: 1150, distance_from_sun: 6484.0), :write)
      :mnesia.write(PlanemoTable, Planemo.planemo(name: :makemake, gravity: 0.5,
        diameter: 1500, distance_from_sun: 6850.0), :write)
      :mnesia.write(PlanemoTable, Planemo.planemo(name: :eris, gravity: 0.8,
        diameter: 2400, distance_from_sun: 10210.0), :write)
    end

    :mnesia.transaction(f)
  end
end
