class AddColumnYearToTeacher < ActiveRecord::Migration[6.0]
  def change
    add_column :teachers, :year, :integer, null: false
  end
end
