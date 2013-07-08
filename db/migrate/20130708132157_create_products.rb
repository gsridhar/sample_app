class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :product_id
      t.integer :user_id
      t.string :content

      t.timestamps
    end
  end
  add_index :products, :product_id
  add_index :products, :user_id
end
