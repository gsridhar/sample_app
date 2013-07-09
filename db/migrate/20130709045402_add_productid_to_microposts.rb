class AddProductidToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :productid, :integer
    add_index :microposts, :productid
  end  
end
