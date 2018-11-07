class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :telephone
      t.text :address
      t.string :registration_number
      t.string :status

      t.timestamps
    end
  end
end
