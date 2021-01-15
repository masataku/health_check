class AddColumnYearToStudents < ActiveRecord::Migration[6.0]
  def change
    add_column :students, :year, :integer, null: false
  end
end
