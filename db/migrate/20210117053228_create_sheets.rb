class CreateSheets < ActiveRecord::Migration[6.0]
  def change
    create_table :sheets do |t|
      t.integer :grade, null: false
      t.integer :my_class, null: false
      t.integer :year, null: false
      t.references :school, foreign_key: true, null: false
      t.timestamps
    end
  end
end
