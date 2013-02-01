class ConsultantMastersController < ApplicationController
  # GET /consultant_masters
  # GET /consultant_masters.json
  def index
    @consultant_masters = ConsultantMaster.all
      render :layout =>'empty_layout'
  end
  def sidebar
    render :layout => 'masteradmin'
  end

  # GET /consultant_masters/1
  # GET /consultant_masters/1.json
  def show
    @consultant_master = ConsultantMaster.find(params[:id])
      render :layout =>'empty_layout'
  end

  # GET /consultant_masters/new
  # GET /consultant_masters/new.json
  def new
    @consultant_master = ConsultantMaster.new
     render :layout =>'empty_layout'
  end

  # GET /consultant_masters/1/edit
  def edit
    @consultant_master = ConsultantMaster.find(params[:id])
      render :layout =>'empty_layout'
  end

  # POST /consultant_masters
  # POST /consultant_masters.json
  def create
    @consultant_master = ConsultantMaster.new(params[:consultant_master])

   respond_to do |format|
    	    format.js { render :content_type => 'text/javascript', :layout => false}
  	 end
  end

  # PUT /consultant_masters/1
  # PUT /consultant_masters/1.json
  def update
    @consultant_master = ConsultantMaster.find(params[:id])

    respond_to do |format|
      if @consultant_master.update_attributes(params[:consultant_master])
        format.html { redirect_to @consultant_master, notice: 'Consultant master was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @consultant_master.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consultant_masters/1
  # DELETE /consultant_masters/1.json
  def destroy
    @consultant_master = ConsultantMaster.find(params[:id])
    @consultant_master.destroy

    respond_to do |format|
      format.html { redirect_to consultant_masters_url }
      format.json { head :no_content }
    end
  end
end
