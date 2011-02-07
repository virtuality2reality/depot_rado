class CreatePayments < ActiveRecord::Migration
  def self.up
    create_table :payments do |t|
      t.text :payment_type

      t.timestamps
    end
  end

  def self.down
    drop_table :payments
  end
end
