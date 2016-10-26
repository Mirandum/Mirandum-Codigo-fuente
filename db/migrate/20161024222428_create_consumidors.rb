class CreateConsumidors < ActiveRecord::Migration[5.0]
  def change
    create_table :consumidors do |t|
      t.string :nombre
      t.string :apellido
      t.string :correoElectronico
      t.date :fechaDeNacimiento
      t.integer :cedula
      t.string :contraseña
      t.timestamps
    end
  end
end
