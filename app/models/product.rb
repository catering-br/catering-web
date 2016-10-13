class Product < ApplicationRecord
  belongs_to :professional
  has_many :transactions
  has_many :keywords
  has_many :pictures
  has_many :cart_items

  validates :name, :description, :price, :rating, presence: true
end
