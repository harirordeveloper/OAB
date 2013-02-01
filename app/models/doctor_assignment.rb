class DoctorAssignment < ActiveRecord::Base
  belongs_to :timing
  belongs_to :clinic
  belongs_to :clinicbranch
  belongs_to :consultant_master
  attr_accessible :clinic_charge, :doctor_charge, :doctor_id,
                  :doctor_name,:clinic_id,:clinicbranch_id,:consultant_master_id
end
