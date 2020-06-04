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
    @total_price = 0.to_i
    current_user.cart.items.each do |item|
      @total_price = @total_price + item.price
    end
  end

def new
end

  def create
    # Amount in cents
    bill
    @amount = (@total_price * 100).to_i
    customer = Stripe::Customer.create({
      email: params[:stripeEmail],
      source: params[:stripeToken],
    })

    charge = Stripe::Charge.create({
      customer: customer.id,
      amount: @amount,
      description: 'Rails Stripe customer',
      currency: 'eur',
    })

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end









end
