json.extract! personalizacion, :id, :fechaSolicitada, :descripcion, :color, :cover, :user_id, :created_at, :updated_at
json.url personalizacion_url(personalizacion, format: :json)