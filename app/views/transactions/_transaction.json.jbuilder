json.extract! transaction, :id, :product_id, :consumer_id, :amount, :unitary_price, :total_price, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)