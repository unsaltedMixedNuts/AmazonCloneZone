class Api::QuestionsController < ApplicationController
  def create
    @question = Question.new(question_params)
    @question.user_id = current_user.id
    @question.save
    render json: @question
  end

  def question_params
    params.require(:question).permit(:body, :product_id)
  end

end
