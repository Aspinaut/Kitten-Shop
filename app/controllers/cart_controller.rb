class CartController < ApplicationController

  def edit
    puts '$$$$$$$$$$$$$$$$$$$'
    puts params[:format]
    puts '$$$$$$$$$$$$$$$$$$$'
    JoinTableCartsItem.create(cart_id: current_user.cart.id, item_id: params[:format])
    redirect_to root_path

  end

  def show
  end

end
