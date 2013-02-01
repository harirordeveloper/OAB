class City < ActiveRecord::Base
  belongs_to :state
  attr_accessible :name
  has_many :locations

  def author_tokens=(ids)
      self.location_ids = ids.split(",")
  end
end


