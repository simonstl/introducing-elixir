defmodule PlanemoStorage do

  def setup do
    planemo_table = :ets.new(:planemos,[
      :named_table,
      {:keypos, Planemo.__index__(:name) + 1}
    ])
    :ets.info(planemo_table)
    planemo_table
  end
end
