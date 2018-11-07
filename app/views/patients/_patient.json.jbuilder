json.extract! patient, :id, :name, :gender, :date_of_birth, :marital, :idcard, :nacionality, :occupation, :telephone, :address, :email, :contactperson, :status, :user_id, :created_at, :updated_at
json.url patient_url(patient, format: :json)
