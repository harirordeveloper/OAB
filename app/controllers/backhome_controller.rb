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
  if city == "" || clinic == ""
	  @clinic_selected = Clinicbranch.all
	  
 else
        @clinic_selected = Clinicbranch.find_all_by_name_and_city_id(clinic,city)
         
 end
 

  render :layout=>false
end


def searchlab
  lab = params[:clinic_val]
  country = params[:country_val]
  state = params[:state_val]
  city=params[:city_val]
 
  puts params[:city_val]
  puts city
  
  if city == "" || lab == ""
       @clinic_selected = Lab.all    
 else
         
         @clinic_selected = Lab.find_all_by_name_and_city_id(lab,city)
	  
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
