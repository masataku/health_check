class RemoveColumnTemperatureIdToCheck < ActiveRecord::Migration[6.0]
  def change
    remove_column :checks, :temperature_id, :integer
  end
end
