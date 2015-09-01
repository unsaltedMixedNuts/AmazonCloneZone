class Api::SessionsController < ApplicationController

  def show
    if current_user
      render json: current_user
    else
      render json: {}
    end
  end

  def create
    @user = User.find_by_credentials(params[:user][:email].downcase, params[:user][:password])
    if @user
      sign_in(@user)
      render :show
    else
      render json: "Invalid username or password.", status: :unprocessable_entity
    end
  end

  def destroy
    sign_out
    render json: {}
  end

end
