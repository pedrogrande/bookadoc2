class AddSlugToDoctorProfile < ActiveRecord::Migration
  def change
    add_column :doctor_profiles, :slug, :string
    add_index :doctor_profiles, :slug, unique: true
  end
end
