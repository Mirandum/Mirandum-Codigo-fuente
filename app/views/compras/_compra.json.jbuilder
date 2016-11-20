json.extract! compra, :id, :fechaSolicitada, :pagada, :precioTotal, :created_at, :updated_at
json.url compra_url(compra, format: :json)