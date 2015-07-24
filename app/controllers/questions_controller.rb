class QuestionsController < ApplicationController
  def create
    @question = Question.new(question_params)

    if !signed_in?
      flash[:errors] = "Please sign in to ask a question. <a href='#{new_session_url}''><span class='generic-link'>Click here to sign in.</span></a>"
    else
      @question.user_id = current_user.id
      if @question.save
        flash[:errors] = "Your question has been posted for others to answer."
      else
        flash[:errors] = "Please enter a question."
      end
    end
      redirect_to product_url(@question.product_id, anchor: 'questions-answers')
  end

  def question_params
    params.require(:question).permit(:body, :product_id)
  end
end
