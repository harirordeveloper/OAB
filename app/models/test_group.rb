class TestGroup < ActiveRecord::Base
  #belongs_to :lab_masters
  attr_accessible :department, :discontinued, :group_id, :group_name,:lab_masters_id
end
