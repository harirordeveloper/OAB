class TestMaster < ActiveRecord::Base
  attr_accessible :disclaiming, :discontinued, :investigation_details, :lab_masters_id, :report_collection_days, :specimen, :test_groups_id, :test_name, :test_subgroup_id
end
