class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.float :latitude
      t.float :longitude
      t.string :address
      t.text :descrption
      t.string :title
      t.string :sales

      t.timestamps
    end
  end
end
