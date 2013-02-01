class Location < ActiveRecord::Base
  belongs_to :country
  belongs_to :city
  has_one :country, :dependent => :destroy
  has_one :city, :dependent => :destroy
  has_many :clinics
  has_many :clinicbranches  
 acts_as_gmappable
 attr_accessible :address, :gmaps, :latitude, :longitude, :name

geocoded_by :address
after_validation :geocode,:if=>:address_changed?

 validates :city_id, :presence => true
 validates :state_id, :presence => true
 validates :country_id, :presence => true

def gmaps4rails_address
   address
end
def gmaps4rails_infowindow
      "#{self.name} #{self.address}"
    end
end
