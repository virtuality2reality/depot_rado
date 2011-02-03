class StoreController < ApplicationController
  def index
    @products = Product.all
    @current_time = Time.now.strftime("%H:%M:%S %d/%m/%y ")
    if session[:counter].nil?
      session[:counter] = 0
    else
      session[:counter] += 1
    end
    
  end

end
