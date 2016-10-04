class ShoppingCart < ApplicationRecord
  enum status: [:cancelado, :ativo , :concluido, :pagamento, :pagado, :empacotando, :transporte, :finalizado]
end
