json.extract! doctorprofile, :id, :firstname, :lastname, :qualification, :clinic, :user_id, :created_at, :updated_at
json.url doctorprofile_url(doctorprofile, format: :json)
