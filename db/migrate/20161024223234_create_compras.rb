class CreateCompras < ActiveRecord::Migration[5.0]
  def change
    create_table :compras do |t|
      t.integer :precioTotal
      t.date :fechaSolicitada
      t.date :fechaEntrega
      t.boolean :pagada

      t.timestamps
    end
  end
end
