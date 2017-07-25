class CreateDtrecords < ActiveRecord::Migration
  def change
    create_table :dtrecords do |t|
      t.string :name
      t.string :string
      t.string :age
      t.string :string
      t.string :user
      t.string :references
      t.string :clinic
      t.string :string

      t.timestamps null: false
    end
  end
end
