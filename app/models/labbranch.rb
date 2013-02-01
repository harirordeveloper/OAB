class Labbranch < ActiveRecord::Base
belongs_to :lab
belongs_to :location
belongs_to :country
belongs_to :state
belongs_to :city
has_many :consultants
attr_accessible :name, :pin, :state_id,:address1, :address2,
                 :altemail, :choosefile,:city_id, :country_id, 
                 :discontinue,:displayname,:email, :expdate, :fax,
                 :landmarks, :location_id,:website
   validates :name, :address1,:email,:city,:location,:expdate, :presence => true
   validates :pin, :length => { :is => 6 }
   validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }
 has_many :labbranch_timings, :dependent => :destroy
        accepts_nested_attributes_for :labbranch_timings, :allow_destroy => :true, :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }
   
end
