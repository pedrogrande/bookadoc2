class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.date :date
      t.time :start_time
      t.time :end_time
      t.string :reason
      t.integer :doctor_id
      t.integer :patient_id

      t.timestamps null: false
    end
    add_index :appointments, :doctor_id
    add_index :appointments, :patient_id
  end
end
