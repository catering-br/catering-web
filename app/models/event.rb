class Event < ApplicationRecord
  belongs_to :consumer
  belongs_to :address
  validates :event_data, :hour, presence: true

  def default_values
    self.attendants ||= 50
    self.estimated_price_from ||= 0
    self.duration ||= 2
  end
end
