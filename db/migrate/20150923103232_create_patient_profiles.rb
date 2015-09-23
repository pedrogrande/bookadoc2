class CreatePatientProfiles < ActiveRecord::Migration
  def change
    create_table :patient_profiles do |t|
      t.references :user, index: true, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :medicare_number
      t.string :address
      t.string :suburb
      t.string :state
      t.string :postcode
      t.string :country
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
