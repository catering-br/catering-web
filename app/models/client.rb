class Client < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :telephones
  has_many :addresses

  validates :login, :email, :password, :name, :cpf, presence: true
  validates :login, :email, :cpf, uniqueness: true
  validates_length_of :cpf, is: 11
  #validates :cpf, length: {:is=>11}
  validates_numericality_of :cpf, :on => :create
end
