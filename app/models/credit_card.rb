class CreditCard < ApplicationRecord
  belongs_to :consumer
  validates :name, :number, :digit, :flag, :expiration, presence: true
end
