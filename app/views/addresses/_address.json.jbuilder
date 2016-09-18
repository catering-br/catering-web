json.extract! address, :id, :client_id, :cep, :street, :number, :complement, :neighborhood, :city, :country, :created_at, :updated_at
json.url address_url(address, format: :json)