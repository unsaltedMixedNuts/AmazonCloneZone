json.partial!("api/products/product",
  product: @product, reviews: @product.reviews,
  questions: @product.questions,
  specs: @product.specifications,
  descriptions: true
)
