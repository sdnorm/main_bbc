class AddColumnsToClient < ActiveRecord::Migration[5.1]
  def change
    add_column :clients, :stripe_subscription_id, :string
    add_column :clients, :card_last4, :string
    add_column :clients, :card_exp_month, :integer
    add_column :clients, :card_exp_year, :integer
    add_column :clients, :card_type, :string
  end
end
