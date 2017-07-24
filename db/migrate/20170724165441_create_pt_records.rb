class CreatePtRecords < ActiveRecord::Migration
  def change
    create_table :pt_records do |t|
      t.string :firstname
      t.string :lastname
      t.string :string
      t.string :email
      t.timestamp :birthdate
      t.string :infection

      t.timestamps null: false
    end
  end
end
