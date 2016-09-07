class Order < ApplicationRecord
  has_many :order_items
  has_many :items, through: :order_items

  def subtotal
    order_items.sum("order_items.item_price*order_items.quantity")
  end

  def num_items
    items.count
  end
end
