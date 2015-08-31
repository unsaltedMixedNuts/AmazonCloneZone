json.array! @orders do |order|
  json.partial!("api/orders/order", order: order)
end
