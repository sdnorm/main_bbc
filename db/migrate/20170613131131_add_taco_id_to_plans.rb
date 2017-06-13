class AddTacoIdToPlans < ActiveRecord::Migration[5.1]
  def change
    add_column :plans, :taco_id, :string, unique: true
  end
end
