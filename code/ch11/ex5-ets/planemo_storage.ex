defmodule PlanemoStorage do
  require Planemo

  def setup do
    planemo_table = :ets.new(:planemos,[:named_table,
      {:keypos, Planemo.planemo(:name) + 1}])
    :ets.info planemo_table
  end
end