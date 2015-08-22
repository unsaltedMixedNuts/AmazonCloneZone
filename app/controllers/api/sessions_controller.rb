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
      render json: @user
    else
      render json: "Invalid username or password.", status: :unprocessable_entity
    end
  end

  def destroy
    sign_out
    render json: {}
  end


  # def create
  #   @user = User.find_by_credentials(params[:user][:email].downcase, params[:user][:password])
  #   if @user
  #     sign_in(@user)
  #     if session[:url_memory]
  #       temp_url = session[:url_memory]
  #       session[:url_memory] = nil
  #       redirect_to temp_url
  #     else
  #       redirect_to root_url
  #     end
  #   else
  #     @user = User.new(email: params[:user][:emai])
  #     flash.now[:errors] = "Invalid username or password."
  #     render :new, layout: "blank"
  #   end
  # end
  #
  # def destroy
  #   sign_out
  #   session[:url_memory] = nil
  #   redirect_to root_url
  # end
end
