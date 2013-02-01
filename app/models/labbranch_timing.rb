class LabbranchTiming < ActiveRecord::Base
  belongs_to :labbranch
   attr_accessible :day, :evening_from,:evening_to,:morning_from,:morning_to,:others_from,:others_to,:labbranch_id
  # attr_accessible :title, :body
end
