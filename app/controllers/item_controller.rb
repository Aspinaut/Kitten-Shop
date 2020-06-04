class ItemController < ApplicationController
  def new
  end

  def create
    Item.create(title: params[:item_title],description: params[:item_description],price: params[:item_price])
    redirect_to item_path(Item.last.id)
  end

  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
    @item.update(title: params[:item_title],description: params[:item_description],price: params[:item_price])
    #redirect_to new_item_picture_path(@item)
  end

  def update
    @item = Item.find(params[:id])
    @item.update(title: params[:item_title],description: params[:item_description],price: params[:item_price])
    redirect_to new_item_picture_path(@item)
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to root_path
  end
end
