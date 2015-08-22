json.(product, :name, :sales_price, :quantity, :dept_id, :brand_id, :created_at, :updated_at)


reviews ||= nil
unless reviews.nil?
  json.reviews(reviews) do |review|
    json.partial!("api/reviews/review", review: review)
  end
end

questions ||= nil
unless questions.nil?
  json.questions(questions) do |question|
    json.partial!("api/questions/question", question: question)
  end
end

specs ||= nil
unless specs.nil?
  json.specs(specs) do |spec|
    json.partial!("api/specifications/specification", spec: spec)
  end
end
