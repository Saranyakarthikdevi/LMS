json.extract! order, :id, :name, :department, :email, :plan_type, :created_at, :updated_at
json.url order_url(order, format: :json)
