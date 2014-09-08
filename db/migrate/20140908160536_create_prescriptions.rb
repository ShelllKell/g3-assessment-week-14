class CreatePrescriptions < ActiveRecord::Migration
  def change
    create_table :prescriptions do |t|
      t.integer :patient_id
      t.integer :medication_id
      t.string :dosage
      t.string :schedule
      t.datetime :starts_on
      t.datetime :ends_on
    end
  end
end