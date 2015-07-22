class UsersController < ApplicationController
  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.new(user_params)
    if email == email_2 && password == password_2 && @user.save
      sign_in(@user)

      if session[:url_memory]
        temp_url = session[:url_memory]
        session[:url_memory] = nil
        redirect_to temp_url
      else
        redirect_to root_url
      end
    else
      flash.now[:errors] = @user.errors.full_messages
      flash.now[:errors] << "E-mails must match" if email != email_2
      flash.now[:errors] << "Passwords must match" if password != password_2
      render :new
    end
  end

  private
  def user_params
    params[:user][:email] = params[:user][:email].downcase
    params[:user][:email_2] = params[:user][:email_2].downcase
    params.require(:user).permit(:email, :name, :password)
  end

  def email
    params[:user][:email]
  end

  def email_2
    params[:user][:email_2]
  end

  def password
    params[:user][:password]
  end

  def password_2
    params[:user][:password_2]
  end
end
