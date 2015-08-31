class Api::QuestionsController < ApplicationController
  def create
    if signed_in?
      @question = Question.new(question_params)
      @question.user_id = current_user.id
      @question.save
      render json: @question
    else
      render json: "Please sign in to ask a question", status: :unprocessable_entity
    end
  end

  def question_params
    params.require(:question).permit(:body, :product_id)
  end

end
