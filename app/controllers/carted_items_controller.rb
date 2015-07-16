class CartedItemsController < ApplicationController
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

    redirect_to cart_url
  end

  def destroy
    @item = CartedItem.where("cart_id = ? AND product_id = ?", session[:cart_id], params[:item][:product_id])
    @item.destroy
    redirect_to cart_url
  end

  def item_params
    params[:item][:product_id] = params[:item][:product_id].to_i
    params[:item][:quantity] = params[:item][:quantity].to_i
    params.require(:item).permit(:product_id, :quantity)
  end
end
