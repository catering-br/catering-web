class Telephone < ApplicationRecord
  belongs_to :client
  validates :telephone, presence: true
end
