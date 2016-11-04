json.extract! credit_card, :id, :client_id, :name, :number, :digit, :flag, :expiration, :created_at, :updated_at
json.url credit_card_url(credit_card, format: :json)