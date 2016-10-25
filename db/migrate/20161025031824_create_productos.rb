class CreateProductos < ActiveRecord::Migration[5.0]
  def change
    create_table :productos do |t|
      t.string :referencia
      t.string :descripcion
      t.integer :precio
      t.string :color
      t.boolean :devuelto
      t.string :imagen

      t.timestamps
    end
  end
end
