class AddCoverToPersonalizacion < ActiveRecord::Migration[5.0]
  def change
  	add_attachment :personalizacions, :cover
  end
end
