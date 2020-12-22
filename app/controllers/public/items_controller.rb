class Public::ItemsController < ApplicationController
  layout "public-header"

  def index
    @customer = current_customer
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

end
