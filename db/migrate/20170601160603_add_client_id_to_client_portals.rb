class AddClientIdToClientPortals < ActiveRecord::Migration[5.1]
  def change
    add_reference :client_portals, :client, foreign_key: true
  end
end
