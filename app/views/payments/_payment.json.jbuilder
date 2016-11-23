json.extract! payment, :id, :shopping_cart_id, :credit_card_id, :number_quotas, :quota_value, :created_at, :updated_at
json.url payment_url(payment, format: :json)