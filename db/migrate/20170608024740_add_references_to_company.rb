class AddReferencesToCompany < ActiveRecord::Migration[5.1]
  def change
    add_reference :companies, :plan, foreign_key: true
  end
end
