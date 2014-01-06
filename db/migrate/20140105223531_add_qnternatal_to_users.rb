class AddQnternatalToUsers < ActiveRecord::Migration
  def change
    add_column :users, :franchise_exp, :string
    add_column :users, :lease_exp_final, :string
    add_column :users, :lease_exp_next, :string
    add_column :users, :name, :string
  end
end
