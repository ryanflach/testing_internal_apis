class OrderSerializer < ActiveModel::Serializer
  attributes :id, :order_number
  attribute :formatted_subtotal, key: :subtotal
  attribute :num_items
  has_many :items

  def formatted_subtotal
    "$#{object.subtotal.to_f / 100}"
  end
end
