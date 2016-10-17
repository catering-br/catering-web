class Telephone < ApplicationRecord
  belongs_to :client, inverse_of: :telephones
  validates :telephone, presence: true
  validates_presence_of :client
end
