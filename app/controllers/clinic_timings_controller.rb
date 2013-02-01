class ClinicTimingsController < ApplicationController
  # GET /clinic_timings
  # GET /clinic_timings.json
  def index
    @clinic_timings = ClinicTiming.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @clinic_timings }
    end
  end

  # GET /clinic_timings/1
  # GET /clinic_timings/1.json
  def show
    @clinic_timing = ClinicTiming.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @clinic_timing }
    end
  end

  # GET /clinic_timings/new
  # GET /clinic_timings/new.json
  def new
    @clinic_timing = ClinicTiming.new
    @timing = Timing.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @clinic_timing }
    end
  end

  # GET /clinic_timings/1/edit
  def edit
    @clinic_timing = ClinicTiming.find(params[:id])
  end

  # POST /clinic_timings
  # POST /clinic_timings.json
  def create
    @clinic_timing = ClinicTiming.new(params[:clinic_timing])

    respond_to do |format|
      if @clinic_timing.save
        format.html { redirect_to @clinic_timing, notice: 'Clinic timing was successfully created.' }
        format.json { render json: @clinic_timing, status: :created, location: @clinic_timing }
      else
        format.html { render action: "new" }
        format.json { render json: @clinic_timing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /clinic_timings/1
  # PUT /clinic_timings/1.json
  def update
    @clinic_timing = ClinicTiming.find(params[:id])

    respond_to do |format|
      if @clinic_timing.update_attributes(params[:clinic_timing])
        format.html { redirect_to @clinic_timing, notice: 'Clinic timing was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @clinic_timing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clinic_timings/1
  # DELETE /clinic_timings/1.json
  def destroy
    @clinic_timing = ClinicTiming.find(params[:id])
    @clinic_timing.destroy

    respond_to do |format|
      format.html { redirect_to clinic_timings_url }
      format.json { head :no_content }
    end
  end
end
