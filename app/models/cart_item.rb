class CartItem < ApplicationRecord
  belongs_to :shopping_cart
  belongs_to :product
  validates :quantity, :unitary_price, presence: true
end
