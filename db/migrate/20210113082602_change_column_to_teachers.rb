class ChangeColumnToTeachers < ActiveRecord::Migration[6.0]
  def change
    remove_column :teachers, :password_digest, :string
    add_column :teachers, :teacher_password, :string
  end
end
