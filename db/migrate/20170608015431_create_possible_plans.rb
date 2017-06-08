class CreatePossiblePlans < ActiveRecord::Migration[5.1]
  def change
    create_table :possible_plans do |t|
      t.string :name
      t.bigint :price

      t.timestamps
    end
  end
end
