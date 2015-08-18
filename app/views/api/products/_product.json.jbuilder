json.(product, :name, :sales_price, :quantity, :dept_id, :brand_id, :created_at, :updated_at)


reviews ||= nil
unless reviews.nil?
  json.reviews(reviews) do |review|
    json.partial!("api/reviews/review", review: review)
  end
end
