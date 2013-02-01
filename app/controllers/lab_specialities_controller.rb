class LabSpecialitiesController < ApplicationController
  #To find branch related to labs
  def branch
     @branch = Labbranch.find_all_by_lab_id("#{params[:branch]}")
     render :json => @branch
  end
  # GET /specialities
  # GET /specialities.json
  def index
    @specialities = Speciality.all
       render :layout => false
  end
  def sidebar
    render :layout => 'masteradmin'
  end

  # GET /specialities/1
  # GET /specialities/1.json
  def show
    @speciality = Speciality.find(params[:id])
       render :layout => false
  end

  # GET /specialities/new
  # GET /specialities/new.json
  def new
    @speciality = Speciality.new
       render :layout => false
  end

 def assignment
    @labspeciality = Speciality.new
       render :layout => false
  end
  # GET /specialities/1/edit
  def edit
    @speciality = Speciality.find(params[:id])
       render :layout => false
  end

  # POST /specialities
  # POST /specialities.json
  def create
    @speciality = Speciality.new(params[:speciality])
    @speciality.speciality_id = params[:lab_id]
    @speciality.speciality_type = "lab"

    respond_to do |format|
    	    format.js { render :content_type => 'text/javascript', :layout => false}
    end
  end

  # PUT /specialities/1
  # PUT /specialities/1.json
  def update
    @speciality = Speciality.find(params[:id])

    respond_to do |format|
      if @speciality.update_attributes(params[:speciality])
        format.html { redirect_to @speciality, notice: 'Speciality was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @speciality.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /specialities/1
  # DELETE /specialities/1.json
  def destroy
    @speciality = Speciality.find(params[:id])
    @speciality.destroy

    respond_to do |format|
      format.html { redirect_to specialities_url }
      format.json { head :no_content }
    end
  end
end
