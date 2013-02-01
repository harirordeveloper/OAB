class CorporateHealthPackage < ActiveRecord::Base
	has_many :corporate_health_package_children, :dependent => :destroy
	accepts_nested_attributes_for :corporate_health_package_children, :allow_destroy => :true, :reject_if => proc { |attrs| attrs.all? { attrs[:test_name_id].blank? } }	

	validate do |corporate_health_package|
		corporate_health_package.errors.add_to_base("Please select group") if corporate_health_package.test_group_id.blank?
		corporate_health_package.errors.add_to_base("Please select sub group") if corporate_health_package.test_sub_group_id.blank?
  	end

end
