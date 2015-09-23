json.array!(@patient_profiles) do |patient_profile|
  json.extract! patient_profile, :id, :user_id, :first_name, :last_name, :phone, :medicare_number, :address, :suburb, :state, :postcode, :country, :latitude, :longitude
  json.url patient_profile_url(patient_profile, format: :json)
end
