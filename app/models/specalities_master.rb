class SpecalitiesMaster < ActiveRecord::Base
 attr_accessible :specialities_attributes

  has_and_belongs_to_many :specialities
  attr_accessible :name

end
