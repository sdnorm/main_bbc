class CreateContactSubmissions < ActiveRecord::Migration[5.1]
  def change
    create_table :contact_submissions do |t|

      t.timestamps
    end
  end
end
