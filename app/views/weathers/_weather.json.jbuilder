json.extract! weather, :id, :city, :units, :created_at, :updated_at
json.url weather_url(weather, format: :json)
