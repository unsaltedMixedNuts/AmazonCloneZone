json.partial!("api/products/product",
  product: @product, reviews: @product.reviews
)

json.partial!("api/products/product",
  product: @product, questions: @product.questions
)

json.partial!("api/products/product",
  product: @product, specs: @product.specifications
)

json.brand_name @product.brand.name
json.image_urls @product.images.map { |image| image.url }
json.descriptions @product.descriptions.map { |object| object.body }
