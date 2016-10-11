class Consumer < ApplicationRecord
  belongs_to :client
  has_many :credit_cards
  has_many :transactions
  has_many :shopping_carts
end
