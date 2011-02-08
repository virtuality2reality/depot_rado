class SessionsController < ApplicationController
  skip_before_filter :authorize

  def new
  end

  def create
    if User.count.zero?
      session[:user_id] = 0
      redirect_to admin_url
    else
      if user = User.authenticate(params[:name], params[:password])
        session[:user_id] = user.id
        redirect_to admin_url
      else
        redirect_to login_url, :alert => "Invalid user/password combination"
      end
    end
    
  end

  def destroy
    session[:user_id] = nil
    redirect_to store_url, :notice => "Logged out"
  end

end
