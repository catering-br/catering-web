class CreditCard < ApplicationRecord
  belongs_to :client
  has_many :payments
  validates :name, :number, :digit, :flag, :expiration, presence: true
end
