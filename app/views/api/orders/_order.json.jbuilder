json.(order, :id, :order_number, :full_name, :payment_method, :address_line_1, :address_line_2, :user_id, :created_at, :updated_at)
json.created_at_seconds Time.parse(order.created_at.to_s).utc.to_i*1000
