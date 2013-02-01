class ClinicTiming < ActiveRecord::Base
  belongs_to :clinic
  attr_accessible :day, :evening_from,:evening_to,:morning_from,:morning_to,:others_from,:others_to,:clinic_id
end
