class AddCoverToProducto < ActiveRecord::Migration[5.0]
  def change
  	add_attachment :productos, :cover
  end
end
