class ChargeMastersController < ApplicationController
  # GET /charge_masters
  # GET /charge_masters.json
  def index
    @charge_masters = ChargeMaster.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @charge_masters }
    end
  end

  # GET /charge_masters/1
  # GET /charge_masters/1.json
  def show
    @charge_master = ChargeMaster.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @charge_master }
    end
  end

  # GET /charge_masters/new
  # GET /charge_masters/new.json
  def new
    @charge_master = ChargeMaster.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @charge_master }
    end
  end

  # GET /charge_masters/1/edit
  def edit
    @charge_master = ChargeMaster.find(params[:id])
  end

  # POST /charge_masters
  # POST /charge_masters.json
  def create
    @charge_master = ChargeMaster.new(params[:charge_master])

     respond_to do |format|
           
    	    format.js { render :content_type => 'text/javascript'}
           
    end
  end

  # PUT /charge_masters/1
  # PUT /charge_masters/1.json
  def update
    @charge_master = ChargeMaster.find(params[:id])

    respond_to do |format|
      if @charge_master.update_attributes(params[:charge_master])
        format.html { redirect_to @charge_master, notice: 'Charge master was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @charge_master.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /charge_masters/1
  # DELETE /charge_masters/1.json
  def destroy
    @charge_master = ChargeMaster.find(params[:id])
    @charge_master.destroy

    respond_to do |format|
      format.html { redirect_to charge_masters_url }
      format.json { head :no_content }
    end
  end
end
