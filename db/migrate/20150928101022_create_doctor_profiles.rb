class CreateDoctorProfiles < ActiveRecord::Migration
  def change
    create_table :doctor_profiles do |t|
      t.string :title
      t.string :first_name
      t.string :last_name
      t.string :photo
      t.text :bio
      t.string :post_nominals
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
