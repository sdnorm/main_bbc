class DropPossiblePlanTable < ActiveRecord::Migration[5.1]
  def change
    drop_table :possible_plans
  end
end
