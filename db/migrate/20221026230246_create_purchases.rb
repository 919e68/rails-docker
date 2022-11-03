class CreatePurchases < ActiveRecord::Migration[6.1]
  def up
    create_table :purchases do |t|
      t.integer :user_id, null: true, limit: 8
      t.string :product
      t.decimal :price, null: false
      t.string :status, null: false, default: 'pending'
      t.timestamps
    end
  end

  def down
    drop_table :purchases
  end
end
