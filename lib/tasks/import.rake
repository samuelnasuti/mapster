#lib/tasks/import.rake
require 'csv'
desc "Imports a CSV file into an ActiveRecord table"
task :import, [:filename] => :environment do    
  # CSV.foreach('lib\tasks\importcsv.csv', :headers => true) do |row|
   CSV.foreach('app\lib\tasks\importcsv.csv',:headers => true) do |row|

    User.create!(row.to_hash)
 end
end