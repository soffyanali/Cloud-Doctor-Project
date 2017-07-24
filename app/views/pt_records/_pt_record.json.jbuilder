json.extract! pt_record, :id, :firstname, :lastname, :string, :email, :birthdate, :infection, :created_at, :updated_at
json.url pt_record_url(pt_record, format: :json)
