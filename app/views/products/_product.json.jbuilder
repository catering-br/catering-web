json.extract! product, :id, :professional_id, :name, :description, :price, :rating, :created_at, :updated_at
json.url product_url(product, format: :json)