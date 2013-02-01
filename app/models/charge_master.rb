class ChargeMaster < ActiveRecord::Base
  attr_accessible :lab_id, :price, :test_group_id, :test_name, :test_sub_group_id,:discount,:fixed_price,:discount_percent
end
