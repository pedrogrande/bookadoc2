json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :date, :start_time, :end_time, :reason, :doctor_id, :patient_id
  json.url appointment_url(appointment, format: :json)
end
