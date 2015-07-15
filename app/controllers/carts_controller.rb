class CartsController < ApplicationController
  def create
    @cart = Cart.create
    session[:cart_id] = @cart.id
    redirect_to cart_url(@cart)
  end

  def show
    @cart = Cart.find(session[:cart_id])
    render :show
  end
end
