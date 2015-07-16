class CheckoutsController < ApplicationController
  def show
    if signed_in?
      get_or_set_cart
      if @cart && @cart.items.length > 0
        render :show
      else
        redirect_to cart_url
      end
    else
      @cart = Cart.find(session[:cart_id])
      if @cart.items.length > 0
        redirect_to new_session_url
      else
        redirect_to cart_url
      end
    end
  end
end
