class SessionsController < ApplicationController
  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.find_by_credentials(params[:user][:email].downcase, params[:user][:password])
    if @user
      sign_in(@user)
      redirect_to root_url
    else
      @user = User.new(email: params[:user][:emai])
      flash.now[:errors] = "Invalid username or password."
      render :new
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end
end
