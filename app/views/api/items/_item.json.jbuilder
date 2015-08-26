json.(item, :id, :ord, :cart_id, :product_id, :quantity, :created_at, :updated_at)
json.brand item.product.brand.name
json.name item.product.name
json.price item.product.sales_price
json.image_url item.product.images.first.url
