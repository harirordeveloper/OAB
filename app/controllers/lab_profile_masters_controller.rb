class LabProfileMastersController < ApplicationController
  # GET /lab_profile_masters
  # GET /lab_profile_masters.json
  def index
   @lab_profile_masters = LabProfileMaster.all
    @clinic_profile_masters = ClinicProfileMaster.all
      render :layout => 'empty_layout'
  end
  def sidebar
    render :layout => 'masteradmin'
  end

  # GET /lab_profile_masters/1
  # GET /lab_profile_masters/1.json
  def show
    @lab_profile_master = LabProfileMaster.find(params[:id])
      render :layout => 'empty_layout'
  end

  # GET /lab_profile_masters/new
  # GET /lab_profile_masters/new.json
  def new
    @lab_profile_master = LabProfileMaster.new
      render :layout => 'empty_layout'
  end

  # GET /lab_profile_masters/1/edit
  def edit
    @lab_profile_master = LabProfileMaster.find(params[:id])
    render :layout => 'empty_layout'
  end

  # POST /lab_profile_masters
  # POST /lab_profile_masters.json
  def create
    @lab_profile_master = LabProfileMaster.new(params[:lab_profile_master])

    respond_to do |format|
    	    format.js { render :content_type => 'text/javascript', :layout => false}
    end
  end

  # PUT /lab_profile_masters/1
  # PUT /lab_profile_masters/1.json
  def update
    @lab_profile_master = LabProfileMaster.find(params[:id])

    respond_to do |format|
      if @lab_profile_master.update_attributes(params[:lab_profile_master])
        format.html { redirect_to @lab_profile_master, notice: 'lab profile master was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @lab_profile_master.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lab_profile_masters/1
  # DELETE /lab_profile_masters/1.json
  def destroy
    @lab_profile_master = LabProfileMaster.find(params[:id])
    @lab_profile_master.destroy

    respond_to do |format|
      format.html { redirect_to lab_profile_masters_url }
      format.json { head :no_content }
    end
  end
end
