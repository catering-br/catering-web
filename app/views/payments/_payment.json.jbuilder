json.extract! payment, :id, :shopping_cart, :card, :number_quotas, :quota_value, :created_at, :updated_at
json.url payment_url(payment, format: :json)