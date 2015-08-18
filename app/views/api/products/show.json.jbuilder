json.partial!("api/products/product",
  product: @product, reviews: @product.reviews
)
json.brand_name @product.brand.name
json.image_urls @product.images.map { |image| image.url }
json.descriptions @product.descriptions.map { |object| object.body }
json.specifications @product.specifications.map { |object| object.body }
