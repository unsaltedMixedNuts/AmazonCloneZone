class Api::AnswersController < ApplicationController

  def create

    if signed_in?
      @answer = Answer.new(answer_params)
      @answer.user_id = current_user.id

      if @answer.save
        render json: @answer
      else
        render json: @answer.errors.full_messages, status: :unprocessable_entity
      end

    else
      render json: "Please sign in to ask a question", status: :unprocessable_entity
    end

  end

  def answer_params
    params.require(:answer).permit(:body, :question_id)
  end

end
