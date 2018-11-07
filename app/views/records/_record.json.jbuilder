json.extract! record, :id, :date_time, :symptom, :diagnostic, :notes, :created_by, :status, :doctor_id, :patient_id, :created_at, :updated_at
json.url record_url(record, format: :json)
