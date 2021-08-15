class CreatePaises < ActiveRecord::Migration[5.0]
  def change
    create_table :paises do |t|
      t.string :name
      t.string :capital
      t.string :continente

      t.timestamps
    end
  end
end
