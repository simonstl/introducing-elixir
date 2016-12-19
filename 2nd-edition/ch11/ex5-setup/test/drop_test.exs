defmodule DropTest do
  use ExUnit.Case, async: false

  setup_all do
    IO.puts "Beginning all tests"

    on_exit fn ->
     IO.puts "Exit from all tests"
    end 

    {:ok, [connection: :fake_PID]}
  end

  setup context do
    IO.puts "About to start a test. Connection is #{Map.get(context, :connection)}"
    
    on_exit fn ->
      IO.puts "Individual test complete."
    end
    
    :ok
  end
  
  test "Zero distance gives zero velocity", context do
    IO.puts "In zero distance test. Connection is #{Map.get(context, :connection)}"
    assert Drop.fall_velocity(:earth,0) == 0
  end

  test "Mars calculation correct" do
    IO.puts "Test two"
    assert Drop.fall_velocity(:mars, 10) == :math.sqrt(2 * 3.71 * 10)
  end
end
