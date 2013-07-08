class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.integer :category_id
      t.integer :product_id

      t.timestamps
    end
  end
  add_index :categories, :category_id
end
