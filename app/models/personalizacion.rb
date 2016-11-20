class Personalizacion < ApplicationRecord
  belongs_to :user
 	
  validates :fechaSolicitada , presence: true
  validates :descripcion, presence: true, length: {minimum: 20}
  validates :color , presence: true
  has_attached_file :cover , styles: { medium: "1280x720", thumb: "800x600"}
  validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/
end
