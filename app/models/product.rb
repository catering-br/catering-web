class Product < ApplicationRecord
  belongs_to :professional
  has_many :transactions
  validates :name, :description, :price, :rating, presence: true
end
