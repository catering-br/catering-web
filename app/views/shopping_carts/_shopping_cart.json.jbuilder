json.extract! shopping_cart, :id, :consumer_id, :status, :fees, :gain, :promotion_discount, :total_paid, :float, :created_at, :updated_at
json.url shopping_cart_url(shopping_cart, format: :json)