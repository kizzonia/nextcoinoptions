json.extract! order, :id, :type, :bitcoin_address, :amount, :email, :created_at, :updated_at
json.url order_url(order, format: :json)
