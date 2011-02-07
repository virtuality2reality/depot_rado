class Order < ActiveRecord::Base
  has_many :line_items, :dependent => :destroy
  @payment_type = Payment.find(:all)
  paytype = []
  @payment_type.each do |p|
    paytype.push(p.payment_type)
  end
  #PAYMENT_TYPES = [ "Check", "Credit card", "Purchase order" ]
  
  validates :name, :address, :email, :pay_type, :presence => true
  validates :pay_type, :inclusion => paytype
  
  def add_line_items_from_cart(cart)
    cart.line_items.each do |item|
      item.cart_id = nil
      line_items << item
    end
  end

end
