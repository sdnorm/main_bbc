class AddMessageDetailsToContactSubmission < ActiveRecord::Migration[5.1]
  def change
    add_column :contact_submissions, :name, :string
    add_column :contact_submissions, :email, :string
    add_column :contact_submissions, :message, :text
  end
end
