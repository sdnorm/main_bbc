class CreateSubscriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :subscriptions do |t|
      t.references :client, foreign_key: true
      t.references :plan, foreign_key: true

      t.timestamps
    end
  end
end
