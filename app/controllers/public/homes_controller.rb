class Public::HomesController < ApplicationController
  layout "public-header"

  def top
    @customer = current_customer
  end

  def about
    @customer = current_customer
  end

end
