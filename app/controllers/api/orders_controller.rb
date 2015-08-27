class Api::OrdersController < ApplicationController

  before_action :require_sign_in

  def index
    @orders = Order.where("user_id = ?", current_user.id)
    render json: @orders
  end

  def create
    @order = Order.new(order_params)
    @order.user_id = current_user.id
    cart = Cart.find(session[:cart_id])
    if @order.save
      cart.empty_cart
      flash[:notice] = "Your Order Has Been Placed Successfully!"
      render json: @order
    else
      flash[:errors] = @order.errors.full_messages
      render json: @order.errors.full_messages, status: :unprocessable_entity
    end
  end

  def show
    @order = Order.find(params[:id])
    if @order.user.id == current_user.id
      render json: @order
    else
      render json: "error error error | we need to fix this", status: :unprocessable_entity
    end
  end

  def order_params
    params.require(:order).permit(:full_name, :address_line_1, :address_line_2, :payment_method)
  end
end
