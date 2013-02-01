class DoctorTiming < ActiveRecord::Base
  belongs_to :consultant_master
  attr_accessible :day, :evening_from,:evening_to,:morning_from,
                 :morning_to,:others_from,:others_to,:consultant_master_id
end
