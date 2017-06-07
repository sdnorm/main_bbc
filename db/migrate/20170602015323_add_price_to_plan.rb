class AddPriceToPlan < ActiveRecord::Migration[5.1]
  def change
    add_column :plans, :monthly_price, :string
    add_column :plans, :annual_price, :string
  end
end
