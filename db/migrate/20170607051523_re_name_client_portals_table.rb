class ReNameClientPortalsTable < ActiveRecord::Migration[5.1]
  def change
    rename_table :client_portals, :companies
  end
end
