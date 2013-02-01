class ClinicProfileMastersController < ApplicationController
  # GET /clinic_profile_masters
  # GET /clinic_profile_masters.json
  def index
     @lab_profile_masters = LabProfileMaster.all
    @clinic_profile_masters = ClinicProfileMaster.all
      render :layout => 'empty_layout'
  end
  def sidebar
    render :layout => 'masteradmin'
  end
def branch
     @branch = Clinicbranch.find_all_by_clinic_id("#{params[:branch]}")
     puts @branch.length
     render :json => @branch
    
  end
  # GET /clinic_profile_masters/1
  # GET /clinic_profile_masters/1.json
  def show
    @clinic_profile_master = ClinicProfileMaster.find(params[:id])
      render :layout => 'empty_layout'
  end

  # GET /clinic_profile_masters/new
  # GET /clinic_profile_masters/new.json
  def new
    @clinic_profile_master = ClinicProfileMaster.new
      render :layout => 'empty_layout'
  end

  # GET /clinic_profile_masters/1/edit
  def edit
    @clinic_profile_master = ClinicProfileMaster.find(params[:id])
     render :layout => 'empty_layout'
  end

  # POST /clinic_profile_masters
  # POST /clinic_profile_masters.json
  def create
    @clinic_profile_master = ClinicProfileMaster.new(params[:clinic_profile_master])

    respond_to do |format|
    	    format.js { render :content_type => 'text/javascript', :layout => false}
    end
  end

  # PUT /clinic_profile_masters/1
  # PUT /clinic_profile_masters/1.json
  def update
    @clinic_profile_master = ClinicProfileMaster.find(params[:id])

    respond_to do |format|
      if @clinic_profile_master.update_attributes(params[:clinic_profile_master])
        format.html { redirect_to @clinic_profile_master, notice: 'Clinic profile master was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @clinic_profile_master.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clinic_profile_masters/1
  # DELETE /clinic_profile_masters/1.json
  def destroy
    @clinic_profile_master = ClinicProfileMaster.find(params[:id])
    @clinic_profile_master.destroy

    respond_to do |format|
      format.html { redirect_to clinic_profile_masters_url }
      format.json { head :no_content }
    end
  end
end
