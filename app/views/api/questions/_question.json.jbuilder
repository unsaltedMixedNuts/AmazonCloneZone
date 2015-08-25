json.(question, :id, :body, :product_id, :user_id, :created_at, :updated_at)
json.answers(question.answers) do |answer|
  json.partial!("api/answers/answer", answer: answer)
end
