class DoctorEducation < ActiveRecord::Base
  belongs_to :consultant_master
  attr_accessible :address, :college, :degree, :year_of_pass,:consultant_master_id
end
