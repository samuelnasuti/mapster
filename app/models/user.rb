class User < ActiveRecord::Base
  attr_accessible :address, :descrption, :latitude, :longitude, :sales, :title
  geocoded_by :address
  after_validation :geocode 



end


