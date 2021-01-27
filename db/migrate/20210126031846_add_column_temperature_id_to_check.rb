class AddColumnTemperatureIdToCheck < ActiveRecord::Migration[6.0]
  def change
    add_column :checks, :temperature_id, :integer, null: false
  end
end
