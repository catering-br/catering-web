class Transaction < ApplicationRecord
  belongs_to :consumer
  belongs_to :product
  validates :amount, :unitary_price, :total_price, presence: true
end
