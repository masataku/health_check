class CreateChecks < ActiveRecord::Migration[6.0]
  def change
    create_table :checks do |t|
      t.date :date, null: false
      t.integer :condition_id, null: false
      t.integer :symptoms_id, null: true
      t.text :opinion, null: true
      t.boolean :attend, null: false, default: true
      t.boolean :check, null: false, default: false
      t.boolean :breakfast, null: false, default: true
      t.integer :bed_time_id, null: false
      t.integer :temperature_id, null: false
      t.boolean :leave_early, null: false, default: false
      t.boolean :late, null: false, default: false
      t.references :student, foreign_key: true, null: false
      t.references :sheet, foreign_key: true, null: false
      t.timestamps
    end
  end
end




