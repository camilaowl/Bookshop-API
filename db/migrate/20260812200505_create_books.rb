class CreateBooks < ActiveRecord::Migration[8.1]
  def change
    create_table :books do |t|
      t.references :category, null: false, foreign_key: true
      t.string :title, null: false
      t.text :description
      t.string :slug, null: false
      t.decimal :price, precision: 10, scale: 2, null: false
      t.integer :stock, null: false, default: 0

      t.timestamps
    end
    add_index :books, :slug, unique: true
  end
end
