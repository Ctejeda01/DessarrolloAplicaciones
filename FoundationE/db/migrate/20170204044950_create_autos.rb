class CreateAutos < ActiveRecord::Migration
  def change
    create_table :autos do |t|
      t.string :modelo
      t.string :marca
      t.integer :precio
      t.date :fecha_venta

      t.timestamps null: false
    end
  end
end
