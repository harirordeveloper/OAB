class LabsController < ApplicationController

#labs home page
 def home
   @city=City.new
  end

#labs profile page
  def profile
    @lab_profile = LabProfileMaster.find_by_lab_id("#{params[:lab_id]}")
    @doctors = DoctorAssignment.find_all_by_lab_id("#{params[:lab_id]}")
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

  # GET /labs
  # GET /labs.json
  def index
   @user=User.new
    @user = current_user      #To get the currently loged in user

     @clinics = @user.clinics
    puts @user.nil?
    @labs = @user.labs  #It displays the labs associated with that user
    $labs=@labs    
render :layout => 'empty_layout'
    
  end

  # GET /labs/1
  # GET /labs/1.json
  def show
    @lab = Lab.find(params[:id])
    render :layout => 'empty_layout'
  end

  # GET /labs/new
  # GET /labs/new.json
  def new
   @lab = Lab.new
   @labbranch = Labbranch.new
   7.times { @lab.lab_timings.build }
   1.times { @lab.labbranches.build }
   7.times { @labbranch.labbranch_timings.build }
   render :layout => 'empty_layout'
  end

  # GET /labs/1/edit
  def edit
    @lab = Lab.find(params[:id])
    @labbranch = Labbranch.find(params[:id])
    7.times { @lab.lab_timings.build }
    1.times { @lab.labbranches.build }
    7.times { @labbranch.labbranch_timings.build }
   render :layout => 'empty_layout'
  end
  def sidebar
    render :layout => 'masteradmin'
  end

  # POST /labs
  # POST /labs.json
  def create
    @lab = lab.new(params[:lab])
	 respond_to do |format|
           
    	    format.js { render :content_type => 'text/javascript'}
           
  	 end
  end

  # PUT /labs/1
  # PUT /labs/1.json
  def update
    @lab = lab.find(params[:id])

    respond_to do |format|
      if @lab.update_attributes(params[:lab])
        format.html { redirect_to @lab, notice: 'lab was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @lab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /labs/1
  # DELETE /labs/1.json
  def destroy
    @lab = lab.find(params[:id])
    @lab.destroy

    respond_to do |format|
      format.html { redirect_to labs_url }
      format.json { head :no_content }
    end
  end

def droptable
end
end
