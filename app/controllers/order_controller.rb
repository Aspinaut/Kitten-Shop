class OrderController < ApplicationController

  def show
    @order = Order.find(current_user.id)
  end

end
