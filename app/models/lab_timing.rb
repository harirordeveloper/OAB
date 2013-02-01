class LabTiming < ActiveRecord::Base
  belongs_to :lab
  attr_accessible :day, :evening_from,:evening_to,:morning_from,:morning_to,:others_from,:others_to,:lab_id
end
