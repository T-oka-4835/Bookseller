class Public::CustomersController < ApplicationController
  layout "public-header"

  def show
    @customer = current_customer
  end

  def edit
  end

  def update
  end

  def unsubscribe
  end

  def withdraw
  end

end
