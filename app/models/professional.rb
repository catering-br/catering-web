class Professional < ApplicationRecord
  belongs_to :client
  has_many :bankings
  has_many :products
end
