class Product < ApplicationRecord
  belongs_to :professional
  has_many :transactions
  has_many :keywords
  validates :name, :description, :price, :rating, presence: true
end
