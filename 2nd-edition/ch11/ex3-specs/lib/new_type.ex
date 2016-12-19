defmodule NewType do
    @type planetuple :: {atom(), number()}

    @spec fall_velocity(planetuple, number()) :: float()
    def fall_velocity({_planemo, gravity}, distance) when distance > 0 do
        :math.sqrt(2 * gravity * distance)
    end

    @spec average_velocity_by_distance(planetuple, number()) :: float()
    def average_velocity_by_distance({planemo, gravity}, distance) when distance > 0 do
        fall_velocity({planemo, gravity}, distance) / 2.0
    end

    @spec fall_distance(planetuple, number()) :: float()
    def fall_distance({_planemo, gravity}, time) when time > 0 do
        gravity * time * time / 2.0
    end
    
    def calculate() do
        earth_v = average_velocity_by_distance({:earth, 9.8}, 10)
        moon_v = average_velocity_by_distance({:moon, 1.6}, 10)
        mars_v = average_velocity_by_distance({3.71, :mars}, 10)
        IO.puts("After 10 seconds, average velocity is:")
        IO.puts("Earth: #{earth_v} m.")
        IO.puts("Moon: #{moon_v} m.")
        IO.puts("Mars: #{mars_v} m.")
    end        
end
