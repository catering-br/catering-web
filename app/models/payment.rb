class Payment < ApplicationRecord
  belongs_to :shopping_cart
  belongs_to :credit_card
end
