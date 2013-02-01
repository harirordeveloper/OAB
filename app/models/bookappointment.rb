class Bookappointment < ActiveRecord::Base
  					            attr_accessible :address, :age, :email, :gender, :name, :phonenum, :clinic_id, :consultant_master_id,:apttime,:aptdate
  #validates :name,:age,:email, :presence => true
  #validates :phonenum, :length => { :is => 10 }
  #validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }



end
