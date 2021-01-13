class CreateTeachers < ActiveRecord::Migration[6.0]
  def change
    create_table :teachers do |t|
      t.string :name, null: false
      t.string :password_digest, null: false
      t.integer :grade, null: false
      t.integer :my_class, null: false
      t.references :school, foreign_key: true, null: false 
      t.timestamps
    end
  end
end
