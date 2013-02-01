class HomeController < ApplicationController

 def fields
  @locations = Clinicbranch.where("name like ?", "%#{params[:q]}%")
  
    respond_to do |format|
      format.html
      format.json { render :json => @locations.map(&:attributes) }

   end
 end
  def index
   @location = Location.new
  end
def aboutus
render :layout=>false 
end

def hospitals_clinics

 @locations = Clinicbranch.where("name like ?", "%#{params[:q]}%")
@hospital=Home.new
 @clinicbranch = Clinicbranch.new
render :layout=>false 
end
def labs
render :layout=>false 
end
def partners
render :layout=>false 
end

def searchclinic
  clinic = params[:clinic_val]
  country = params[:country_val]
  state = params[:state_val]
  city=params[:city_val]
  if city == "" && clinic == "" && country == "" && state == ""
	  @clinic_selected = Clinicbranch.all
	  
  elsif city == "" && clinic != "" && state != "" && country !=""
          @clinic_selected = Clinicbranch.find_all_by_name_and_state_id(clinic,state)
  elsif clinic == "" && country == "" && state != "" && city != ""
          @clinic_selected = Clinicbranch.find_all_by_state_id_and_city_id(state,city)
  elsif city == "" && clinic == "" && state == "" && country != ""
           @clinic_selected = Clinicbranch.find_all_by_country_id(country)
  elsif city == "" && clinic == "" && country == "" && state != ""
           @clinic_selected = Clinicbranch.find_all_by_state_id(state)
  elsif city == "" && clinic == "" && country != "" && state != ""
           @clinic_selected = Clinicbranch.find_all_by_country_id_and_state_id(country,state)
  elsif city == "" && clinic != "" && country == "" && state == ""
           @clinic_selected = Clinicbranch.find_all_by_name(clinic)
  elsif city == "" && clinic != "" && country != "" && state == ""
  @clinic_selected = Clinicbranch.find_all_by_name_and_country_id(clinic,country)
   elsif city != "" && clinic == "" && country != "" && state != ""
  @clinic_selected =    		Clinicbranch.find_all_by_city_id_and_state_id_and_country_id(city,state,country)
   elsif city != "" && clinic == "" && country == "" && state == ""
  @clinic_selected =Clinicbranch.find_all_by_city_id(city)
 elsif city != "" && clinic == "" && country!= "" && state == ""

  @clinic_selected =Clinicbranch.find_all_by_city_id_and_country_id(city,country)

  else
        @clinic_selected = Clinicbranch.find_all_by_name_and_city_id_and_state_id(clinic,city,state)
         
 end
   render :layout=>false
end


def searchlab
  clinic = params[:clinic_val]
  country = params[:country_val]
  state = params[:state_val]
  city=params[:city_val]
    if city == "" && clinic == "" && country == "" && state == ""
	  @clinic_selected = Lab.all
	  
  elsif city == "" && clinic != "" && state != "" && country !=""
          @clinic_selected = Lab.find_all_by_name_and_state_id(clinic,state)
  elsif clinic == "" && country == "" && state != "" && city != ""
          @clinic_selected = Lab.find_all_by_state_id_and_city_id(state,city)
  elsif city == "" && clinic == "" && state == "" && country != ""
           @clinic_selected = Lab.find_all_by_country_id(country)
  elsif city == "" && clinic == "" && country == "" && state != ""
           @clinic_selected = Lab.find_all_by_state_id(state)
  elsif city == "" && clinic == "" && country != "" && state != ""
           @clinic_selected = Lab.find_all_by_country_id_and_state_id(country,state)
  elsif city == "" && clinic != "" && country == "" && state == ""
           @clinic_selected = Lab.find_all_by_name(clinic)
  elsif city == "" && clinic != "" && country != "" && state == ""
  @clinic_selected = Lab.find_all_by_name_and_country_id(clinic,country)
   elsif city != "" && clinic == "" && country != "" && state != ""
  @clinic_selected =    		Lab.find_all_by_city_id_and_state_id_and_country_id(city,state,country)
  elsif city != "" && clinic == "" && country == "" && state == ""
              @clinic_selected = Lab.find_all_by_city_id(city)
  elsif city != "" && clinic == "" && country!= "" && state == ""
              @clinic_selected = Lab.find_all_by_city_id_and_country_id(city,country)


  else
        @clinic_selected = Lab.find_all_by_name_and_city_id_and_state_id(clinic,city,state)
         
 end
  render :layout=>false
end



def support
render :layout=>false 
end
def feedback



render :layout=>false
end
def state
 @state = State.find_all_by_country_id("#{params[:country_val]}")
 render :json => @state
end
def city
 @city = City.find_all_by_state_id("#{params[:country_val]}")
 render :json => @city
end

end
