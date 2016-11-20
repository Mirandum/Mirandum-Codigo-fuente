class HasProducto < ApplicationRecord
  belongs_to :compra
  belongs_to :producto
end
