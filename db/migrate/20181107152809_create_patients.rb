class CreatePatients < ActiveRecord::Migration[5.1]
  def change
    create_table :patients do |t|
      t.string :name
      t.text :gender
      t.date :date_of_birth
      t.string :marital
      t.string :idcard
      t.string :nacionality
      t.string :occupation
      t.string :telephone
      t.string :address
      t.string :email
      t.string :contactperson
      t.string :status
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
