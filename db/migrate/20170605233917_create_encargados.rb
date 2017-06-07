class CreateEncargados < ActiveRecord::Migration[5.1]
  def change
    create_table :encargados do |t|
      t.string :nombre
      t.string :telefono
      t.string :correo

      t.timestamps
      
    end
  end
end
