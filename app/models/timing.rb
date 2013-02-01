class Timing < ActiveRecord::Base
attr_accessible :clinic_timings_attributes,:doctor_timings_attributes,:doctor_assignments_attributes
   has_many :doctor_assignments, :dependent => :destroy
        accepts_nested_attributes_for :doctor_assignments, :allow_destroy => :true, :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }
end
