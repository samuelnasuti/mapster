class AddRevenueToUsers < ActiveRecord::Migration
  def change
    add_column :users, :revenue, :integer
    add_column :users, :comment, :text
    add_column :users, :nearesttb, :float
    add_column :users, :priority, :integer
  end
end
