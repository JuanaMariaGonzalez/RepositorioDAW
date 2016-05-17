class CreateLibros < ActiveRecord::Migration
  def change
    create_table :libros do |t|
      t.string :titulo_libro
      t.string :autor
      t.string :editorial
      t.integer :anio

      t.timestamps null: false
    end
  end
end
