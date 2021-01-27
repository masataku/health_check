class AddColumnHeadTeacherToSchool < ActiveRecord::Migration[6.0]
  def change
    add_column :schools, :head_teacher, :string, null: false
  end
end
