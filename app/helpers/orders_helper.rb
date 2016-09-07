module OrdersHelper
  def count_items(order)
    order.items.count
  end
end
