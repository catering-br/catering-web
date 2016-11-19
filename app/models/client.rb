class Client < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :telephones, inverse_of: :client
  has_many :addresses
  has_many :credit_cards
  has_many :shopping_carts
  has_many :events
  has_one :professional

  validates :login, :email, :password, :name, :cpf, presence: true
  validates :login, :email, :cpf, uniqueness: true
  validates_length_of :cpf, in: 11..14
  validates_numericality_of :cpf, :on => :create

  accepts_nested_attributes_for :telephones, allow_destroy:  true

  has_attached_file :avatar, styles: {medium: "300x300#",  thumb: "100x100#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
