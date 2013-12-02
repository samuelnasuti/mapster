#lib/tasks/import.rake
require 'csv'
desc "Imports a CSV file into an ActiveRecord table"
task :import, [:filename] => :environment do    
  # CSV.foreach('lib\tasks\importcsv.csv', :headers => true) do |row|
 #  CSV.foreach('app\lib\tasks\importcsv.csv',:headers => true) do |row|
#CSV.foreach(Rails.root.join("lib", "tasks", "importcsv.csv"),:headers => true) do |row|
CSV.foreach('https://docs.google.com/uc?export=download&id=0B8erCOXy_I19MWhmc2dnVjlOS00',:headers => true) do |row|
    User.create!(row.to_hash)
 end
end