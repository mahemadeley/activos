class CreateTipos < ActiveRecord::Migration[5.1]
  def change
    create_table :tipos do |t|
      t.string :bienes
      t.integer :vida_util
      t.float :Coeficiente

      t.timestamps

    end
  end
end
