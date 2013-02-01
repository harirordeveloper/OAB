class DoctorLabAssignment < ActiveRecord::Base
  belongs_to :timing
  belongs_to :lab
  belongs_to :labbranch
  belongs_to :consultant_master
  attr_accessible :lab_charge, :doctor_charge, :doctor_id,
                  :doctor_name,:lab_id,:labbranch_id,:consultant_master_id
end
