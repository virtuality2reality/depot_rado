class AddProductPriceToLineItem < ActiveRecord::Migration
  def self.up
    add_column :line_items, :product_price, :decimal, :precision => 8, :scale => 2
    LineItem.all.each do |line_item|
      line_item.update_attribute :product_price, line_item.product.price
    end
  end

  def self.down
    remove_column :line_items, :product_price
  end
end
