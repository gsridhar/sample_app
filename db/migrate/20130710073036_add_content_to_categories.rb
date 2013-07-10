class AddContentToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :content, :string
  end
end
