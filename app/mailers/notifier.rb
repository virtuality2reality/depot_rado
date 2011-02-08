class Notifier < ActionMailer::Base
  default :from => "depot_rado@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.order_received.subject
  #
  def order_received(order)
    @order = order
    mail :to => order.email, :subject => 'Pragmatic Store Order Confirmation'
  end


  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.order_shipped.subject
  #
  def order_shipped(order)
    @order = order
    mail :to => order.email, :subject => 'Pragmatic Store Order Shipped'    
  end
  
  def error_occured(error)
    @cart_id = error
    mail :to => "rado.rakotobe@gmail.com", :subject => 'Pragmatic Store Error'    
  end
  
end
