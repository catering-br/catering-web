class ShoppingCart < ApplicationRecord
  belongs_to :consumer
  has_many :cart_items
  enum status: [:cancelado, :ativo , :concluido, :pagamento, :pagado, :empacotando, :transporte, :finalizado]
end
