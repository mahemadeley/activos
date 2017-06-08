class CreateActivos < ActiveRecord::Migration[5.1]
  def change
    create_table :activos do |t|
      t.string :descripcion
      t.float :precio
      t.date :fecha
      t.integer :sector

      t.timestamps
    end
  end
end
