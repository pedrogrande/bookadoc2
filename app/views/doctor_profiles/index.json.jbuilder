json.array!(@doctor_profiles) do |doctor_profile|
  json.extract! doctor_profile, :id, :title, :first_name, :last_name, :photo, :bio, :post_nominals, :user_id
  json.url doctor_profile_url(doctor_profile, format: :json)
end
