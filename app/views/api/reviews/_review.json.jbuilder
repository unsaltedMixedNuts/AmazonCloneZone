json.(review, :id, :title, :body, :stars, :user_id, :created_at, :updated_at, :product_id)
json.user_name review.user.name
json.created_at_seconds Time.parse(review.created_at.to_s).utc.to_i*1000
