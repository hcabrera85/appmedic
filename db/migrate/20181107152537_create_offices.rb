class CreateOffices < ActiveRecord::Migration[5.1]
  def change
    create_table :offices do |t|
      t.string :name
      t.string :telephone
      t.text :address
      t.string :registration_number
      t.string :status
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
