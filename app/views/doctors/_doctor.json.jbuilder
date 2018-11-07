json.extract! doctor, :id, :name, :gender, :date_of_birth, :marital, :idcard, :nacionality, :occupation, :telephone, :address, :email, :status, :user_id, :created_at, :updated_at
json.url doctor_url(doctor, format: :json)
