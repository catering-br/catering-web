class Event < ApplicationRecord
  belongs_to :consumer
  belongs_to :address
  validates :event_data, :hour, presence: true
end
