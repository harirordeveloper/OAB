class DoctorAssignmentsController < ApplicationController
  def fields
  @doctor = ConsultantMaster.where("name like ?", "%#{params[:q]}%")
  
    respond_to do |format|
      format.html
      format.json { render :json => @doctor.map(&:attributes) }

   end
 end
  def search
    if params[:cal]!=""
     ids = params[:cal]
    else
     ids = 0
    end
    @consultant = ConsultantMaster.find(:all, :conditions => ["id in (#{ids})"])
    render :json => @consultant
     
  end
  def branch
     @branch = Clinicbranch.find_all_by_clinic_id("#{params[:branch]}")
     
     render :json => @branch
    
  end
  def sidebar
    render :layout => 'masteradmin'
  end
 
  # GET /doctor_assignments
  # GET /doctor_assignments.json
  def index
    @doctor_assignments = DoctorAssignment.all
 render :layout => 'empty_layout'

  end

  # GET /doctor_assignments/1
  # GET /doctor_assignments/1.json
  def show
    @doctor_assignment = DoctorAssignment.find(params[:id])
 render :layout => 'empty_layout'
  end

  # GET /doctor_assignments/new
  # GET /doctor_assignments/new.json
  def new
    @doctor_assignment = DoctorAssignment.new
    @timing = Timing.new
     render :layout => 'empty_layout'
  end

  # GET /doctor_assignments/1/edit
  def edit
    @doctor_assignment = DoctorAssignment.find(params[:id])
    @timing = Timing.new
 render :layout => 'empty_layout'
  end

  # POST /doctor_assignments
  # POST /doctor_assignments.json
  def create
    @doctor_assignment = DoctorAssignment.new(params[:doctor_assignment])

    respond_to do |format|
      if @doctor_assignment.save
        format.html { redirect_to @doctor_assignment, notice: 'Doctor assignment was successfully created.' }
        format.json { render json: @doctor_assignment, status: :created, location: @doctor_assignment }
      else
        format.html { render action: "new" }
        format.json { render json: @doctor_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /doctor_assignments/1
  # PUT /doctor_assignments/1.json
  def update
    @doctor_assignment = DoctorAssignment.find(params[:id])

    respond_to do |format|
      if @doctor_assignment.update_attributes(params[:doctor_assignment])
        format.html { redirect_to @doctor_assignment, notice: 'Doctor assignment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @doctor_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doctor_assignments/1
  # DELETE /doctor_assignments/1.json
  def destroy
    @doctor_assignment = DoctorAssignment.find(params[:id])
    @doctor_assignment.destroy

    respond_to do |format|
      format.html { redirect_to doctor_assignments_url }
      format.json { head :no_content }
    end
  end
end
