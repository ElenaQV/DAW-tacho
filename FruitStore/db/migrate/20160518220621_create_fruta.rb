class CreateFruta < ActiveRecord::Migration
  def change
    create_table :fruta do |t|
      t.string :name
      t.string :color
      t.string :size

      t.timestamps null: false
    end
  end
end
