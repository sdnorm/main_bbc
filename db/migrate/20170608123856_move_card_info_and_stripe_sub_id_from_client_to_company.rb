class MoveCardInfoAndStripeSubIdFromClientToCompany < ActiveRecord::Migration[5.1]
  def change
    remove_column :clients, :card_last4
    remove_column :clients, :card_exp_month
    remove_column :clients, :card_exp_year
    remove_column :clients, :card_type
    remove_column :clients, :stripe_subscription_id

    add_column :companies, :card_last4, :string
    add_column :companies, :card_exp_month, :bigint
    add_column :companies, :card_exp_year, :bigint
    add_column :companies, :card_type, :string
    add_column :companies, :stripe_subscription_id, :string
  end
end
