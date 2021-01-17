class AddColumnDateToSheet < ActiveRecord::Migration[6.0]
  def change
    add_column :sheets, :date, :date
  end
end
