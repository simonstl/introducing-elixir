defmodule Test do

  def setup do
    :mnesia.start()
    :mnesia.transaction( 
  fn() -> 
    :qlc.e(
      :qlc.q( lc x inlist :mnesia.table(planemo), do: x )
    ) end )
  end
end


