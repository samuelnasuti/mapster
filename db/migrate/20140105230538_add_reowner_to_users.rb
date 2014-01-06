class AddReownerToUsers < ActiveRecord::Migration
  def change
    add_column :users, :re_owner, :string
  end
end
