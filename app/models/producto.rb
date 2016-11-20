class Producto < ApplicationRecord
	has_many :comments
	
	validates :referencia, presence: true, uniqueness: true
	validates :descripcion, presence: true, length: {minimum: 20}
	validates :precio, presence: true
	validates :color, presence: true
	
	validates :tipo, presence: true
#paperclip para las imagenes
	has_attached_file :cover , styles: { medium: "1280x720", thumb: "800x600"}
	validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/
end
