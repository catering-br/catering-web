class Banking < ApplicationRecord
  belongs_to :professional
  validates :bank, :account, :agency, presence: true
end
