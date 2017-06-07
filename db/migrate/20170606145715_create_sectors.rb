class CreateSectors < ActiveRecord::Migration[5.1]
  def change
    create_table :sectors do |t|
      t.string :descripcion
      t.string :ubicacion

      t.timestamps
    end
  end
end
