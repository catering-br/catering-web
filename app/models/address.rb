class Address < ApplicationRecord
  belongs_to :client
  has_many :events
  enum address_types: [:comercial, :residencial]
  validates :cep, :street, :number, :neighborhood, :city, :country, presence: true
end
