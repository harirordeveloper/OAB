class DoctorTimingsController < ApplicationController
  # GET /doctor_timings
  # GET /doctor_timings.json
  def index
    @doctor_timings = DoctorTiming.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @doctor_timings }
    end
  end

  # GET /doctor_timings/1
  # GET /doctor_timings/1.json
  def show
    @doctor_timing = DoctorTiming.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @doctor_timing }
    end
  end

  # GET /doctor_timings/new
  # GET /doctor_timings/new.json
  def new
    @timing = Timing.new
    @doctor_timing = DoctorTiming.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @doctor_timing }
    end
  end

  # GET /doctor_timings/1/edit
  def edit
    @doctor_timing = DoctorTiming.find(params[:id])
  end

  # POST /doctor_timings
  # POST /doctor_timings.json
  def create
    @doctor_timing = DoctorTiming.new(params[:doctor_timing])

    respond_to do |format|
      if @doctor_timing.save
        format.html { redirect_to @doctor_timing, notice: 'Doctor timing was successfully created.' }
        format.json { render json: @doctor_timing, status: :created, location: @doctor_timing }
      else
        format.html { render action: "new" }
        format.json { render json: @doctor_timing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /doctor_timings/1
  # PUT /doctor_timings/1.json
  def update
    @doctor_timing = DoctorTiming.find(params[:id])

    respond_to do |format|
      if @doctor_timing.update_attributes(params[:doctor_timing])
        format.html { redirect_to @doctor_timing, notice: 'Doctor timing was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @doctor_timing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doctor_timings/1
  # DELETE /doctor_timings/1.json
  def destroy
    @doctor_timing = DoctorTiming.find(params[:id])
    @doctor_timing.destroy

    respond_to do |format|
      format.html { redirect_to doctor_timings_url }
      format.json { head :no_content }
    end
  end
end
