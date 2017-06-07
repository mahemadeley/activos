class CreateEvaluos < ActiveRecord::Migration[5.1]
  def change
    create_table :evaluos do |t|
      t.integer :tipo
      t.string :Activo
      t.string :integer
      t.text :descripcion
      t.float :montoactual
      t.date :fecha

      t.timestamps

    end
  end
end
