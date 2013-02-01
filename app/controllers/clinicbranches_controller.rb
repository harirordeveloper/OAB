class ClinicbranchesController < ApplicationController
  before_filter :check
before_filter :check_lab
 #this loads the variable

# GET /clinicbranches
  # GET /clinicbranches.json

  def index
       @labbranches =$labs[0].labbranches
      @clinicbranches =$clinics[0].clinicbranches
       $clinicbranches=@clinicbranches
      
      render :layout => 'empty_layout'
  end

  def sidebar
    render :layout => 'masteradmin'
  end

  # GET /clinicbranches/1
  # GET /clinicbranches/1.json
  def show
    @clinicbranch = Clinicbranch.find(params[:id])
     render :layout => 'empty_layout'
  end

  # GET /clinicbranches/new
  # GET /clinicbranches/new.json
  def new
    @clinicbranch = Clinicbranch.new
    @clinicbranch_timings=ClinicbranchTiming.new

   7.times { @clinicbranch.clinicbranch_timings.build }


     render :layout => 'empty_layout'
end

  # GET /clinicbranches/1/edit
  def edit
    @clinicbranch = Clinicbranch.find(params[:id])
    
    render :layout => 'empty_layout'
  end

  # POST /clinicbranches
  # POST /clinicbranches.json
  def create
    @clinicbranch = Clinicbranch.new(params[:clinicbranch])

    respond_to do |format|
      if @clinicbranch.save
        format.html { redirect_to @clinicbranch, notice: 'Clinicbranch was successfully created.' }
        format.json { render json: @clinicbranch, status: :created, location: @clinicbranch }
      else
        format.html { render action: "new" }
        format.json { render json: @clinicbranch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /clinicbranches/1
  # PUT /clinicbranches/1.json
  def update
    @clinicbranch = Clinicbranch.find(params[:id])

    respond_to do |format|
      if @clinicbranch.update_attributes(params[:clinicbranch])
        format.html { redirect_to @clinicbranch, notice: 'Clinicbranch was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @clinicbranch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clinicbranches/1
  # DELETE /clinicbranches/1.json
  def destroy
    @clinicbranch = Clinicbranch.find(params[:id])
    @clinicbranch.destroy

    respond_to do |format|
      format.html { redirect_to clinicbranches_url }
      format.json { head :no_content }
    end
  end
end
