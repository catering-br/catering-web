json.extract! event, :id, :client, :event_data, :hour, :attendants, :address, :duration, :estimated_price_from, :estimated_price_until, :created_at, :updated_at
json.url event_url(event, format: :json)