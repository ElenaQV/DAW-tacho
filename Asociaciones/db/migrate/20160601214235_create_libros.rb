class CreateLibros < ActiveRecord::Migration
  def change
    create_table :libros do |t|
      t.string :titulo
      t.string :autor
      t.text :descipcion
      t.integer :anio

      t.timestamps null: false
    end
  end
end
