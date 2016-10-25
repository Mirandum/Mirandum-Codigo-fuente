class Producto < ApplicationRecord
	validates :referencia, presence: true, uniqueness: true
	validates :descripcion, presence: true, length: {minimum: 20}
	validates :precio, presence: true
	validates :color, presence: true
	validates :imagen, presence: true
end
