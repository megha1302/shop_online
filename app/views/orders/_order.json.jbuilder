json.extract! order, :id, :orderno, :trackingno, :paymenttype, :tamount, :orderdate, :user_id, :created_at, :updated_at
json.url order_url(order, format: :json)
