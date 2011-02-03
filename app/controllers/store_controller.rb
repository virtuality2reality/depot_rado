class StoreController < ApplicationController
  def index
    @products = Product.all
    @current_time = Time.now.strftime("%H:%M:%S %d/%m/%y ")
  end

end
