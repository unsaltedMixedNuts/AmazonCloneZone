class Api::UsersController < ApplicationController

  def create
    @user = User.new(user_params)

    if email == email_2 && password == password_2 && @user.save
      sign_in(@user)
      render json: @user
    else
      @user.errors.full_messages << "Emails must match" if email != email_2
      @user.errors.full_messages << "Passwords must match" if password != password_2
      render json: @user.errors.full_messages, status: :unprocessable_entity
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
