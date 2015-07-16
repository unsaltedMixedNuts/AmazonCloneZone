class CartsController < ApplicationController

  def show
    if session[:cart_id]
      @cart = Cart.find(session[:cart_id])
    else
      @cart = signed_in? ? Cart.find(current_user.cart.id) : Cart.create
      session[:cart_id] = @cart.id
    end
    render :show
  end
end
