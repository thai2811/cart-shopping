class Item < ApplicationRecord
  belongs_to :cart
  belongs_to :product

  validates :quantity, presence: true, numericality: { only_integer: true,
    greater_than: 0 }
  validates :product_id, presence: true, uniqueness: { scope: :cart_id }
end
