class CreateCheckSymptoms < ActiveRecord::Migration[6.0]
  def change
    create_table :check_symptoms do |t|
      t.references :check, foreign_key: true, null: false
      t.references :symptom, foreign_key: true, null: false
      t.timestamps
    end
  end
end
