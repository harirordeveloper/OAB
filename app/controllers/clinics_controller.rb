class ClinicsController < ApplicationController

#clinics home page
 def home
   @city=City.new
  end

#clinics profile page
  def profile
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

  # GET /clinics
  # GET /clinics.json
  def index
   @user=User.new
    @user = current_user      #To get the currently loged in user
    @labs = @user.labs
    @clinics = @user.clinics  #It displays the clinics associated with that user
    $clinics=@clinics    
render :layout => 'empty_layout'
    
  end

  # GET /clinics/1
  # GET /clinics/1.json
  def show
    @clinic = Clinic.find(params[:id])
    render :layout => 'empty_layout'
  end

  # GET /clinics/new
  # GET /clinics/new.json
  def new
   @clinic = Clinic.new
   @clinicbranch=Clinicbranch.new
   @clinicbranch_timings=ClinicbranchTiming.new
  
   5.times { @clinic.clinicbranches.build }

   7.times { @clinic.clinic_timings.build }
  
   7.times { @clinicbranch.clinicbranch_timings.build }
   render :layout => 'empty_layout'
  end

  # GET /clinics/1/edit
  def edit
    @clinic = Clinic.find(params[:id])
    @clinicbranch = Clinicbranch.find(params[:id])
    7.times { @clinic.clinic_timings.build }
    1.times { @clinic.clinicbranches.build }
    7.times { @clinicbranch.clinicbranch_timings.build }
   render :layout => 'empty_layout'
  end
  def sidebar
    render :layout => 'masteradmin'
  end

  # POST /clinics
  # POST /clinics.json
  def create
    @clinic = Clinic.new(params[:clinic])
    @clinicbranch=Clinicbranch.new(params[:clinicbranch_timings_attributes])
@clinicbranch.save
    params[:clinicbranches].each_value { |branch| @clinic.clinicbranches.build(branch) }
     params[:clinicbranch_timings].each_value { |branchtime| @clinicbranch.clinicbranch_timings.build(branchtime) }
   
	 respond_to do |format|
           
    	    format.js { render :content_type => 'text/javascript'}
           
  	 end

  end

  # PUT /clinics/1
  # PUT /clinics/1.json
  def update
    @clinic = Clinic.find(params[:id])

    respond_to do |format|
      if @clinic.update_attributes(params[:clinic])
        format.html { redirect_to @clinic, notice: 'Clinic was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @clinic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clinics/1
  # DELETE /clinics/1.json
  def destroy
    @clinic = Clinic.find(params[:id])
    @clinic.destroy

    respond_to do |format|
      format.html { redirect_to clinics_url }
      format.json { head :no_content }
    end
  end

def droptable
end
end
