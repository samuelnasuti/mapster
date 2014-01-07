class User < ActiveRecord::Base
	include UsersHelper
  attr_accessible :latitude, :longitude, :sales_volume, :sales_year, :brand, :street, :city, :zip, :state, :yum_id, :closest_tb, :store_number, :franchisee, :name, :franchise_exp, :lease_exp_next, :lease_exp_final, :re_owner
 geocoded_by :address
 after_validation :geocode, :if => :latitude.blank?

def address
  [street, city, state].compact.join(', ')
end
end


 def helpers
    ActionView::Helpers::NumberHelper
    end