class Address < ApplicationRecord
    belongs_to :client
    validates :cep, :street, :number, :neighborhood, :city, :country, presence: true
end
