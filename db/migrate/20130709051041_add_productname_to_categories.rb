class AddProductnameToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :productname, :string
  end
end
