class CreateClientPortals < ActiveRecord::Migration[5.1]
  def change
    create_table :client_portals do |t|
      t.string :company_name
      t.string :domain

      t.timestamps
    end
  end
end
