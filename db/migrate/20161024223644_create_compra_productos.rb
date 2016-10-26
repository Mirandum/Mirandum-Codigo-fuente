class CreateCompraProductos < ActiveRecord::Migration[5.0]
  def change
    create_table :compra_productos do |t|
      t.belongs_to :producto, index: true 
	  t.belongs_to :compra, index: true
      t.timestamps
    end
  end
end
