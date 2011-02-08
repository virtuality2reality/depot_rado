class StoreController < ApplicationController
  skip_before_filter :authorize
  def index
    @products = Product.all
    @cart = current_cart
    @current_time = Time.now.strftime("%H:%M:%S %d/%m/%y ")
    if session[:counter].nil?
      session[:counter] = 0
    else
      session[:counter] += 1
    end
    
  end

end
