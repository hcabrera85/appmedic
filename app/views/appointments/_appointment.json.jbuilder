json.extract! appointment, :id, :title, :date, :time, :notes, :created_by, :status, :doctor_id, :patient_id, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
