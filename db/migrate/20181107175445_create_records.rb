class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      t.datetime :date_time
      t.text :symptom
      t.text :diagnostic
      t.text :notes
      t.string :created_by
      t.string :status
      t.references :doctor, foreign_key: true
      t.references :patient, foreign_key: true

      t.timestamps
    end
  end
end
