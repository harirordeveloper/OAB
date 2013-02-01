class LabSpecalitiesMaster < ActiveRecord::Base
 attr_accessible :lab_specialities_attributes

  has_and_belongs_to_many :lab_specialities
  attr_accessible :name

end
