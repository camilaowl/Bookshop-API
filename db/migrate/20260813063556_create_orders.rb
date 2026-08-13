class CreateOrders < ActiveRecord::Migration[8.1]
  def change
    create_table :orders do |t|
      t.references :account, null: false, foreign_key: true
      t.integer :status, null: false, default: 0
      t.decimal :subtotal, precision: 10, scale: 2, null: false, default: 0.00
      t.decimal :total, precision: 10, scale: 2, null: false, default: 0.00

      t.timestamps
    end
  end
end
