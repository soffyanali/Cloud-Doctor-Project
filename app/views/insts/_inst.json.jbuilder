json.extract! inst, :id, :firstname, :lastname, :manufacturer, :cost, :description, :color, :created_at, :updated_at
json.url inst_url(inst, format: :json)
