class Client < ApplicationRecord
  has_many :telephones
  has_many :addresses

  validates :login, :email, :password, :name, :cpf, presence: true
  validates :login, :email, :cpf, uniqueness: true
end
