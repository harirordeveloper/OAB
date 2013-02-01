class OrgDetail < ActiveRecord::Base
  attr_accessible :address, :city_id, :country_id, :first_name, :last_name, :mobile, :org_address, :org_city, :org_country, :org_location, :org_name, :org_phone1, :org_phone2, :org_postal_code, :org_state, :postal_code, :sign_up_as, :state_id, :user_id
end
