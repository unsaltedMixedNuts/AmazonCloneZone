class Api::CartedItemsController < ApplicationController
  def create
    get_or_set_cart
    puts params
    if @cart.products.include?(Product.find(params[:carted_item][:product_id]))
      @item = CartedItem.where("cart_id = ? AND product_id = ?", session[:cart_id], params[:carted_item][:product_id]).first
      @item.quantity += params[:carted_item][:quantity].to_i
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
    params[:carted_item][:product_id] = params[:carted_item][:product_id].to_i
    params[:carted_item][:quantity] = params[:carted_item][:quantity].to_i
    params.require(:carted_item).permit(:product_id, :quantity)
  end
end
