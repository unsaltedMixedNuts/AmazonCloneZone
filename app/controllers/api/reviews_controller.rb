class Api::ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    @review.save
    render json: @review
  end

  def review_params
    params.require(:review).permit(:title, :body, :stars, :product_id)
  end

end
