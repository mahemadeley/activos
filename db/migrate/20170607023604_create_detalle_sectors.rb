class CreateDetalleSectors < ActiveRecord::Migration[5.1]
  def change
    create_table :detalle_sectors do |t|
      t.integer :sector
      t.integer :empleado

      t.timestamps
    end
  end
end
