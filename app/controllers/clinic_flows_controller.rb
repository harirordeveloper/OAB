class ClinicFlowsController < ApplicationController
  
 
  #clinics home page
 def home
   @city=City.new
  end

#clinics profile page
  def profile
   @googlemaplocation=Location.find_by_id("#{params[:clinic_id]}")
    
    @json1 = @googlemaplocation.to_gmaps4rails do |locations, marker|
 
  marker.picture({
                  :picture => "http://www.google.com/mapfiles/dd-start.png",
                  :width   => 32,
                  :height  => 32
                 })
  end
  
    @neargooglemaplocation=@googlemaplocation.nearbys(10)
    @json2= @neargooglemaplocation.to_gmaps4rails do |locations, marker|
 
  marker.picture({
                  :picture => "http://www.google.com/mapfiles/dd-start.png",
                  :width   => 32,
                  :height  => 32
                 })
  end
    
    @json = (JSON.parse(@json1) + JSON.parse(@json2)).to_json
    
  
    @clinic = Clinic.find_by_id("#{params[:clinic_id]}")
    @clinic_profile = ClinicProfileMaster.find_by_clinic_id("#{params[:clinic_id]}")
    @doctors = DoctorAssignment.find_all_by_clinic_id("#{params[:clinic_id]}")
    @clinic_id=params[:clinic_id]
  end
#clinics doctors page
  def doctors
  
  @googlemaplocation=Location.find_by_id("#{params[:clinic_id]}")
    
    @json1 = @googlemaplocation.to_gmaps4rails do |locations, marker|
 
  marker.picture({
                  :picture => "http://www.google.com/mapfiles/dd-start.png",
                  :width   => 32,
                  :height  => 32
                 })
  end
  
    @neargooglemaplocation=Location.all
    @json2= @neargooglemaplocation.to_gmaps4rails do |locations, marker|
 
  marker.picture({
                  :picture => "http://www.google.com/mapfiles/dd-start.png",
                  :width   => 32,
                  :height  => 32
                 })
  end
    
    @json = (JSON.parse(@json1) + JSON.parse(@json2)).to_json
    
  
     @clinic = Clinic.find_by_id("#{params[:clinic_id]}")
    @clinic_profile = ClinicProfileMaster.find_by_clinic_id("#{params[:clinic_id]}")
    @doctors = DoctorAssignment.find_all_by_clinic_id("#{params[:clinic_id]}")
  end


#clinics serach page
  def search
     if params[:cal] == ""
        ids = 0
      
     else
       ids = params[:cal]
     end
    @clinics = Clinic.find(:all, :conditions => ["location_id in (#{ids})"])
        render :layout => false
  end

#clinic appointment page
  def appointment
    @apt = Appointment.all
  end
  # GET /clinic_flows
  # GET /clinic_flows.json
  def index
    @clinic_flows = ClinicFlow.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @clinic_flows }
    end
  end

  # GET /clinic_flows/1
  # GET /clinic_flows/1.json
  def show
    @clinic_flow = ClinicFlow.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @clinic_flow }
    end
  end

  # GET /clinic_flows/new
  # GET /clinic_flows/new.json
  def new
    @clinic_flow = ClinicFlow.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @clinic_flow }
    end
  end

  # GET /clinic_flows/1/edit
  def edit
    @clinic_flow = ClinicFlow.find(params[:id])
  end

  # POST /clinic_flows
  # POST /clinic_flows.json
  def create
    @clinic_flow = ClinicFlow.new(params[:clinic_flow])

    respond_to do |format|
      if @clinic_flow.save
        format.html { redirect_to @clinic_flow, notice: 'Clinic flow was successfully created.' }
        format.json { render json: @clinic_flow, status: :created, location: @clinic_flow }
      else
        format.html { render action: "new" }
        format.json { render json: @clinic_flow.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /clinic_flows/1
  # PUT /clinic_flows/1.json
  def update
    @clinic_flow = ClinicFlow.find(params[:id])

    respond_to do |format|
      if @clinic_flow.update_attributes(params[:clinic_flow])
        format.html { redirect_to @clinic_flow, notice: 'Clinic flow was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @clinic_flow.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clinic_flows/1
  # DELETE /clinic_flows/1.json
  def destroy
    @clinic_flow = ClinicFlow.find(params[:id])
    @clinic_flow.destroy

    respond_to do |format|
      format.html { redirect_to clinic_flows_url }
      format.json { head :no_content }
    end
  end
  
  
  
end
