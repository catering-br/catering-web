class Consumer < ApplicationRecord
  belongs_to :client
  has_many :credit_cards
  has_many :shopping_carts
  has_many :events
end
