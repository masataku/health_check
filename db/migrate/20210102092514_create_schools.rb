class CreateSchools < ActiveRecord::Migration[6.0]
  def change
    create_table :schools do |t|
      t.string :email, null: false
      t.string :password, null:false
      t.string :school_name, null: false
      t.string :teacher_password, null: false
      t.string :student_password, null: false
      t.timestamps
    end
  end
end
