class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user, :signed_in?, :require_sign_in

  private
  def current_user
    @current_user ||= User.find_by(session_token: session[:session_token])
  end

  def signed_in?
    !!current_user
  end

  def sign_in(user)
    @current_user = user
    session[:session_token] = user.reset_session_token!
    merge_carts(current_user) if session[:cart_id]
  end

  def sign_out
    current_user.try(:reset_session_token!)
    session[:session_token] = nil
    session[:cart_id] = nil
  end

  def require_sign_in
    redirect_to new_session_url unless signed_in?
  end

  def get_or_set_cart
    if session[:cart_id] && Cart.find_by_id(session[:cart_id])
      @cart = Cart.find(session[:cart_id])
    else
      @cart = signed_in? ? Cart.find(current_user.cart.id) : Cart.create
      session[:cart_id] = @cart.id
    end
  end

  def merge_carts(current_user)
    og_cart = Cart.find(session[:cart_id])
    new_cart = Cart.find(current_user.cart.id)

    og_cart.items.each do |item|
      if new_cart.products.include?(item.product)
        new_cart_item = CartedItem.where("cart_id = ? AND product_id = ?", new_cart.id, item.product_id).first
        higher_qty = [item.quantity, new_cart_item.quantity].max
        new_cart_item.quantity = higher_qty
        new_cart_item.save
      else
        item.cart_id = new_cart.id
        new_cart.items << item
        new_cart.save
      end
    end

    og_cart.destroy
    session[:cart_id] = nil
  end
end
