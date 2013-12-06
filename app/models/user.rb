class User < ActiveRecord::Base
	include UsersHelper
  attr_accessible :address, :descrption, :latitude, :longitude, :sales, :title
  geocoded_by :address
  after_validation :geocode 
end


 def helpers
    ActionView::Helpers::NumberHelper
    end