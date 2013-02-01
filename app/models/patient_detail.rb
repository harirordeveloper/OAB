class PatientDetail < ActiveRecord::Base
  attr_accessible :city_id, :country_id, :dob, :first_name, :gender, :last_name, :location_id, :mobile, :postal_code, :state_id, :user_id
end
