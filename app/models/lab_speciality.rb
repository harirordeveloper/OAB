class LabSpeciality < ActiveRecord::Base
   has_and_belongs_to_many :lab_specalities_masters
   attr_accessible :lab_specalities_master_ids,:lab_speciality_id,:lab_speciality_type
   validates :lab_specalities_master_ids,:presence => true
   validates :lab_speciality_id,:presence => true
  #validates :clinicbranch_id, :presence => true
  #validates :clinic_id, :presence => true

end
