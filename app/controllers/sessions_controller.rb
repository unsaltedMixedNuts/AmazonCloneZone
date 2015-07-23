class SessionsController < ApplicationController
  def new
    @user = User.new
    render :new, layout: "blank"
  end

  def create
    @user = User.find_by_credentials(params[:user][:email].downcase, params[:user][:password])
    if @user
      sign_in(@user)
      if session[:url_memory]
        temp_url = session[:url_memory]
        session[:url_memory] = nil
        redirect_to temp_url
      else
        redirect_to root_url
      end
    else
      @user = User.new(email: params[:user][:emai])
      flash.now[:errors] = "Invalid username or password."
      render :new, layout: "blank"
    end
  end

  def destroy
    sign_out
    session[:url_memory] = nil
    redirect_to root_url
  end
end
