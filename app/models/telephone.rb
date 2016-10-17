class Telephone < ApplicationRecord
  belongs_to :client, inverse_of: :telephones
  validates :telephone, presence: true
  validates_presence_of :client
  validates_format_of :telephone, length: {in:10}
                      #:with => /\A(\(?(809|829|849)\)?[-. ]\d{3}[-.]\d{4})\z/,
                      #:message => "Formato invalido"
end
