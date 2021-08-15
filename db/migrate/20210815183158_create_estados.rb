class CreateEstados < ActiveRecord::Migration[5.0]
  def change
    create_table :estados do |t|
      t.string :name
      t.string :pais

      t.timestamps
    end
  end
end
