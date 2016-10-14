class Address < ApplicationRecord
  belongs_to :client
  enum address_types: [:comercial, :residencial]
  validates :cep, :street, :number, :neighborhood, :city, :country, presence: true
end
