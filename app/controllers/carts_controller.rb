class CartsController < ApplicationController

  def show
    if session[:cart_id]
      @cart = Cart.find(session[:cart_id])
    else
      get_or_set_cart
    end
    render :show
  end
end
