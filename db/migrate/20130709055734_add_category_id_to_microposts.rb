class AddCategoryIdToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :category_id, :integer
    add_index :microposts, :category_id
  end

end
