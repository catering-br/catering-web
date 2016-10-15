class CreditCard < ApplicationRecord
  belongs_to :consumer
  has_many :payments
  validates :name, :number, :digit, :flag, :expiration, presence: true
end
