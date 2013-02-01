class LabSpecalitiesMastersController < ApplicationController
  # GET /specalities_masters
  # GET /specalities_masters.json
  def index
    @labspecalities_masters= LabSpecalitiesMaster.all
      render :layout => false
  end
  def sidebar
    render :layout => 'masteradmin'
  end

  # GET /specalities_masters/1
  # GET /specalities_masters/1.json
  def show
    @specalities_master = LabSpecalitiesMaster.find(params[:id])
       render :layout => false
  end

  # GET /specalities_masters/new
  # GET /specalities_masters/new.json
  def new
    @specalities_master = LabSpecalitiesMaster.new
       render :layout => false
  end

  # GET /specalities_masters/1/edit
  def edit
    @specalities_master = LabSpecalitiesMaster.find(params[:id])
    render :layout => false
  end

  # POST /specalities_masters
  # POST /specalities_masters.json
  def create
    @specalities_master = LabSpecalitiesMaster.new(params[:specalities_master])

    respond_to do |format|
      if @specalities_master.save
        format.html { redirect_to @specalities_master, notice: 'Specalities master was successfully created.' }
        format.json { render json: @specalities_master, status: :created, location: @specalities_master }
      else
        format.html { render action: "new" }
        format.json { render json: @specalities_master.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /specalities_masters/1
  # PUT /specalities_masters/1.json
  def update
    @specalities_master = LabSpecalitiesMaster.find(params[:id])

    respond_to do |format|
      if @specalities_master.update_attributes(params[:specalities_master])
        format.html { redirect_to @specalities_master, notice: 'Specalities master was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @specalities_master.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /specalities_masters/1
  # DELETE /specalities_masters/1.json
  def destroy
    @specalities_master = LabSpecalitiesMaster.find(params[:id])
    @specalities_master.destroy

    respond_to do |format|
      format.html { redirect_to specalities_masters_url }
      format.json { head :no_content }
    end
  end
end
