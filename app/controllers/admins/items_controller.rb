class Admins::ItemsController < ApplicationController
  layout "admin-header"

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    item = Item.new(item_params)
    item.save
    redirect_to admins_items_path
  end

  def show
  end

  def edit
  end

  def update
  end

private

  def item_params
    params.require(:item).permit(:name, :introduction, :image)
  end

end
