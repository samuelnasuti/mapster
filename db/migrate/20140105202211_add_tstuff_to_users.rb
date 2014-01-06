class AddTstuffToUsers < ActiveRecord::Migration
  def change
    add_column :users, :franchisee, :string
    add_column :users, :store_number, :string
  end
end
