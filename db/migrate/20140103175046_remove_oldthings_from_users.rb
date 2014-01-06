class RemoveOldthingsFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :descrption
    remove_column :users, :sales
    remove_column :users, :title
    remove_column :users, :revenue
    remove_column :users, :address

  end

  def down
    add_column :users, :nearestb, :string
    add_column :users, :address, :string
    add_column :users, :revenue, :string
    add_column :users, :title, :string
    add_column :users, :sales, :string
    add_column :users, :descrption, :string
  end
end
