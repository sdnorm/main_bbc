class RemoveColumnsFromPlans < ActiveRecord::Migration[5.1]
  def change
    remove_column :plans, :monthly_price
    remove_column :plans, :annual_price
  end
end
