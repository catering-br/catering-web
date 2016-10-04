json.extract! cart_item, :id, :shopping_cart_id, :quantity, :unitary_price, :created_at, :updated_at
json.url cart_item_url(cart_item, format: :json)