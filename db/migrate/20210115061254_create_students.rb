class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :student_password, null: false
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :first_name_kana, null: false
      t.string :last_name_kana, null: false
      t.integer :grade, null: false
      t.integer :my_class, null: false
      t.integer :number, null: false
      t.references :school, foreign_key: true, null: false
      t.timestamps
    end
  end
end
