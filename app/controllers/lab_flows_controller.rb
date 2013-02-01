class LabFlowsController < ApplicationController
  
 
  #labs home page
 def home
   @city=City.new
  end

#labs profile page
  def profile
       @googlemaplocation=Location.find_by_id("#{params[:lab_id]}")
    
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
    @lab = Lab.find_by_id("#{params[:lab_id]}")
    @lab_profile = LabProfileMaster.find_by_lab_id("#{params[:lab_id]}")

   
    
    @doctors = DoctorLabAssignment.find_all_by_lab_id("#{params[:lab_id]}")
    @lab_id=params[:lab_id]
	puts "sdddddddddddddddddddddddddddddddddfsdfsdfsdfsfs"
    respond_to do |format|
      format.html # show.html.erb
      #format.json { render json: @lab_flow }
    end
  end
#labs doctors page
  def doctors
  
  @googlemaplocation=Location.find_by_id("#{params[:lab_id]}")
    
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
    
  
     @lab = Lab.find_by_id("#{params[:lab_id]}")
    @lab_profile = LabProfileMaster.find_by_lab_id("#{params[:lab_id]}")
    @doctors = DoctorLabAssignment.find_all_by_lab_id("#{params[:lab_id]}")
  end


#labs serach page
  def search
     if params[:cal] == ""
        ids = 0
      
     else
       ids = params[:cal]
     end
    @labs = Lab.find(:all, :conditions => ["location_id in (#{ids})"])
        render :layout => false
  end

#lab appointment page
  def appointment
    @apt = Appointment.all
  end
  # GET /lab_flows
  # GET /lab_flows.json
  def index
    @lab_flows = LabFlow.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lab_flows }
    end
  end

  # GET /lab_flows/1
  # GET /lab_flows/1.json
  def show
    @lab_flow = LabFlow.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lab_flow }
    end
  end

  # GET /lab_flows/new
  # GET /lab_flows/new.json
  def new
    @lab_flow = LabFlow.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lab_flow }
    end
  end

  # GET /lab_flows/1/edit
  def edit
    @lab_flow = LabFlow.find(params[:id])
  end

  # POST /lab_flows
  # POST /lab_flows.json
  def create
    @lab_flow = LabFlow.new(params[:lab_flow])

    respond_to do |format|
      if @lab_flow.save
        format.html { redirect_to @lab_flow, notice: 'lab flow was successfully created.' }
        format.json { render json: @lab_flow, status: :created, location: @lab_flow }
      else
        format.html { render action: "new" }
        format.json { render json: @lab_flow.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lab_flows/1
  # PUT /lab_flows/1.json
  def update
    @lab_flow = LabFlow.find(params[:id])

    respond_to do |format|
      if @lab_flow.update_attributes(params[:lab_flow])
        format.html { redirect_to @lab_flow, notice: 'lab flow was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @lab_flow.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lab_flows/1
  # DELETE /lab_flows/1.json
  def destroy
    @lab_flow = LabFlow.find(params[:id])
    @lab_flow.destroy

    respond_to do |format|
      format.html { redirect_to lab_flows_url }
      format.json { head :no_content }
    end
  end
def booktest
  @labid = params[:lab_id]
  @appointment_lab = Lab.find(@labid)
  @book_lab_appointment = BookLabAppointment.new
end
  

 def branch
     @branch = ChargeMaster.find_all_by_lab_id_and_test_name("#{params[:clinic]}","#{params[:branch]}")
     puts @branch.to_json
     render :json => @branch
    
  end
  
end
