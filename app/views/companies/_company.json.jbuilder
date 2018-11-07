json.extract! company, :id, :name, :telephone, :address, :registration_number, :status, :created_at, :updated_at
json.url company_url(company, format: :json)
