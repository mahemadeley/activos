class CreateActivos < ActiveRecord::Migration[5.1]
  def change
    create_table :activos do |t|
      t.text :Descripcion
      t.float :monto
      t.date :fecha

      t.timestamps
      
    end
  end
end
