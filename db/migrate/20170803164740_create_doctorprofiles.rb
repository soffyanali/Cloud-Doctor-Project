class CreateDoctorprofiles < ActiveRecord::Migration
  def change
    create_table :doctorprofiles do |t|
      t.string :firstname
      t.string :lastname
      t.string :qualification
      t.string :clinic
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
