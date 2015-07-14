class ProductsController < ApplicationController
  def index
    # This will be the method that the root page refers to.
    @products = Product.all
    render :index
  end
end
