class Consultant < ActiveRecord::Base
  belongs_to :clinicbranch
  belongs_to :clinic
  attr_accessible :clinicbranch_id, :clinic_id, :consultantcode, :evengtime,
                  :experience, :mrngtime, :speciality, :workingat

  
end
