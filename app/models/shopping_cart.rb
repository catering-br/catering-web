class ShoppingCart < ApplicationRecord
  belongs_to :client
  has_many :cart_items
  has_one :payment
  enum status: [:cancelado, :ativo , :concluido, :pagamento, :pagado, :empacotando, :transporte, :finalizado]
  validates :status, presence:true

  def default_values
    self.fees ||= 0
    self.gain ||= 0
    self.promotion_discount ||= 0
    self.total_paid ||= 0
  end
end
