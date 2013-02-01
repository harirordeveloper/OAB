class LocationsController < ApplicationController
layout 'locations'
#this metod is for selcecting names for auto-complete process
  def fields
  @locations = Location.where("name like ?", "%#{params[:q]}%")
  
    respond_to do |format|
      format.html
      format.json { render :json => @locations.map(&:attributes) }

   end
 end
#this method is for searching all the data related to clinics
  def search
      clinic = params[:clinic]#clinic name comes here
      location = params[:location]#location name comes here
      city = params[:city_id]#city id comes here
      speciality = params[:speciality_id]#speciality id comes here
      @location = Location.find_by_city_id_and_name(city,location)
     if !@location
        ids = 0
        @clinics = Clinic.find(:all)
     else
       ids = @location.id
        @clinics = Clinic.find(:all, :conditions => ["location_id in (#{ids})"])
     end
        @speciality = SpecalitiesMaster.find_by_id(speciality)
 
  $gclinic = clinic
  $glocation = location
  $gcity = city
  $gspeciality = speciality
   
  end
def labsearch
      lab = params[:clinic]#clinic name comes here
      location = params[:location]#location name comes here
      city = params[:city_id]#city id comes here
      speciality = params[:speciality_id]#speciality id comes here
      @location = Location.find_by_city_id_and_name(city,location)
     if !@location
        ids = 0
        @labs = Lab.find(:all)
     else
       ids = @location.id
        @labs = Lab.find(:all, :conditions => ["location_id in (#{ids})"])
     end
        @speciality = SpecalitiesMaster.find_by_id(speciality)
 
  $glab = lab
  $glocation = location
  $gcity = city
  $gspeciality = speciality
 end
def doctor_search
      doctor = params[:doctor]#clinic name comes here
      location = params[:location]#location name comes here
      city = params[:city_id]#city id comes here
      speciality = params[:speciality_id]#speciality id comes here
      @location = Location.find_by_city_id_and_name(city,location)
     if !@location
        ids = 0
        @doctors = ConsultantMaster.find(:all)
     else
       ids = @location.id
        @doctors = ConsultantMaster.find(:all, :conditions => ["location_id in (#{ids})"])
     end
        @speciality = SpecalitiesMaster.find_by_id(speciality)
 
  $gdoctor = doctor
  $glocation = location
  $gcity = city
  $gspeciality = speciality
 end

 
  # GET /locations
  # GET /locations.json
  def index
   @locations = Location.all
    @json=Location.all.to_gmaps4rails

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @locations }
    end
  end

  # GET /locations/1
  # GET /locations/1.json
  def show
     @location = Location.find(params[:id])
    @json=@location.to_gmaps4rails
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @location }
    end
  end

  # GET /locations/new
  # GET /locations/new.json
  def new
    @location = Location.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @location }
    end
  end

  # GET /locations/1/edit
  def edit
    @location = Location.find(params[:id])
  end

  # POST /locations
  # POST /locations.json
  def create
    @location = Location.new(params[:location])

    respond_to do |format|
      if @location.save
        format.html { redirect_to @location, notice: 'Location was successfully created.' }
        format.json { render json: @location, status: :created, location: @location }
      else
        format.html { render action: "new" }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /locations/1
  # PUT /locations/1.json
  def update
    @location = Location.find(params[:id])

    respond_to do |format|
      if @location.update_attributes(params[:location])
        format.html { redirect_to @location, notice: 'Location was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /locations/1
  # DELETE /locations/1.json
  def destroy
    @location = Location.find(params[:id])
    @location.destroy

    respond_to do |format|
      format.html { redirect_to locations_url }
      format.json { head :no_content }
    end
  end

end
