class CreatePersonalizacions < ActiveRecord::Migration[5.0]
  def change
    create_table :personalizacions do |t|
      t.datetime :fechaSolicitada
      t.string :descripcion
      t.string :color
      
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
