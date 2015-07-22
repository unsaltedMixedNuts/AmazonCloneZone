class OrdersController < ApplicationController

  def index
    @orders = Order.where("user_id = ?", current_user.id)
    render :index
  end

  def create
    @order = Order.new(order_params)
    @order.user_id = current_user.id
    if @order.save
      flash[:notice] = "Your Order Has Been Placed Successfully!"
      redirect_to order_url(@order)
    else
      flash[:errors] = @order.errors.full_messages
      redirect_to checkout_url
    end
  end

  def show
    @order = Order.find(params[:id])
    render :show
  end

  def order_params
    params.require(:order).permit(:full_name, :address_line_1, :address_line_2, :payment_method)
  end
end
