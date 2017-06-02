class AddStripIdToClient < ActiveRecord::Migration[5.1]
  def change
    add_column :clients, :stripe_id, :string
  end
end
