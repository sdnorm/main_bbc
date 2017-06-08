class AddBigIntAndBillingfrequencyToPlan < ActiveRecord::Migration[5.1]
  def change
    add_column :plans, :price, :bigint
    add_column :plans, :billing_frequency, :string
  end
end
