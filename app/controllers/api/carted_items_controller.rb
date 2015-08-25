class Api::CartedItemsController < ApplicationController
  def create
    get_or_set_cart
    if @cart.products.include?(Product.find(params[:item][:product_id]))
      @item = CartedItem.where("cart_id = ? AND product_id = ?", session[:cart_id], params[:item][:product_id]).first
      @item.quantity += params[:item][:quantity].to_i
      @item.save
    else
      @item = CartedItem.new(item_params)
      @item.cart_id = session[:cart_id]
      @item.save
    end

    render json: @item
  end

  def destroy
    @item = CartedItem.find(params[:id])
    @item.destroy
    render json: @item
  end

  def item_params
    params[:item][:product_id] = params[:item][:product_id].to_i
    params[:item][:quantity] = params[:item][:quantity].to_i
    params.require(:item).permit(:product_id, :quantity)
  end
end
