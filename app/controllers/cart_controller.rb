class CartController < ApplicationController

  def edit
    JoinTableCartsItem.create(cart_id: current_user.cart.id, item_id: params[:format])
    redirect_to root_path
  end

  def show
    @items = current_user.cart.items
    bill
  end

  def destroy
    current_user.cart.items.destroy(params[:format])
    redirect_to cart_path
  end

  def bill
    @total_price = 0
    current_user.cart.items.each do |item|
      @total_price = @total_price + item.price
    end
  end

end
