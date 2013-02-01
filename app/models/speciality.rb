class Speciality < ActiveRecord::Base
   has_and_belongs_to_many :specalities_masters
   attr_accessible :specalities_master_ids,:speciality_id,:speciality_type
   validates :specalities_master_ids,:presence => true
   validates :speciality_id,:presence => true
  #validates :clinicbranch_id, :presence => true
  #validates :clinic_id, :presence => true

end
