class ChangeColumnType < ActiveRecord::Migration
def up
#change latitude columntype from string to integertype
change_column :listings, :sales, :integer

end

def down

end
end