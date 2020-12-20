class Public::CartsController < ApplicationController
  layout "public-header"
  
  def index 
    @customer = current_customer 
    @carts = @customer.carts.all
    @cart = cerrent_customer.carts.find_by(item_id: params[:item_id])
    @total = 0
  end 
  
  
end
