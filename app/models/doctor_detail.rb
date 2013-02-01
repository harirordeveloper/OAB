class DoctorDetail < ActiveRecord::Base
  attr_accessible :city_id, :country_id, :experience, :expertise, :first_name, :gender, :last_name, :location_id, :mobile, :profile_title, :speciality, :specializations, :state_id, :user_id
end
