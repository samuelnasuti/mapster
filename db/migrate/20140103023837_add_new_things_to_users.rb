class AddNewThingsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :yum_id, :string
    add_column :users, :sales_volume, :integer
    add_column :users, :street, :string
    add_column :users, :city, :string
    add_column :users, :zip, :string
    add_column :users, :sales_year, :string
    add_column :users, :state, :string
    add_column :users, :closest_tb, :float
  end
end
