class ClinicbranchTiming < ActiveRecord::Base
  belongs_to :clinicbranch
   attr_accessible :day, :evening_from,:evening_to,:morning_from,:morning_to,:others_from,:others_to,:clinicbranch_id
  # attr_accessible :title, :body
end
