class CartController < ApplicationController

  def edit
    JoinTableCartsItem.create(cart_id: current_user.cart.id, item_id: params[:format])
    redirect_to root_path

  end

  def show
  end

end
