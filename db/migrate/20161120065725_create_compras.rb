class CreateCompras < ActiveRecord::Migration[5.0]
  def change
    create_table :compras do |t|
      t.datetime :fechaSolicitada
      t.boolean :pagada
      t.integer :precioTotal
      
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
