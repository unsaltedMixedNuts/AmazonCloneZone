class ConfirmationsController < ApplicationController
  class show
    @order = Order.find()
    render :show
  end
end
