class CreatePurchases < ActiveRecord::Migration[5.1]
  def change
    create_table :purchases do |t|
      t.string :name
      t.integer :tel
      t.string :address
      t.string :mail
      t.integer :user_id
      t.string :user_name
      t.integer :admin_id
      t.integer :product_id
      t.string :product_name

      t.timestamps
    end
  end
end
