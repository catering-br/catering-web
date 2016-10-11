class CartItem < ApplicationRecord
  belongs_to :shopping_cart
  validates :quantity, :unitary_price, presence: true
end
