class labTimingsController < ApplicationController
  # GET /lab_timings
  # GET /lab_timings.json
  def index
    @lab_timings = LabTiming.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lab_timings }
    end
  end

  # GET /lab_timings/1
  # GET /lab_timings/1.json
  def show
    @lab_timing = LabTiming.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lab_timing }
    end
  end

  # GET /lab_timings/new
  # GET /lab_timings/new.json
  def new
    @lab_timing = LabTiming.new
    @timing = Timing.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lab_timing }
    end
  end

  # GET /lab_timings/1/edit
  def edit
    @lab_timing = LabTiming.find(params[:id])
  end

  # POST /lab_timings
  # POST /lab_timings.json
  def create
    @lab_timing = LabTiming.new(params[:lab_timing])

    respond_to do |format|
      if @lab_timing.save
        format.html { redirect_to @lab_timing, notice: 'lab timing was successfully created.' }
        format.json { render json: @lab_timing, status: :created, location: @lab_timing }
      else
        format.html { render action: "new" }
        format.json { render json: @lab_timing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lab_timings/1
  # PUT /lab_timings/1.json
  def update
    @lab_timing = LabTiming.find(params[:id])

    respond_to do |format|
      if @lab_timing.update_attributes(params[:lab_timing])
        format.html { redirect_to @lab_timing, notice: 'lab timing was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @lab_timing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lab_timings/1
  # DELETE /lab_timings/1.json
  def destroy
    @lab_timing = LabTiming.find(params[:id])
    @lab_timing.destroy

    respond_to do |format|
      format.html { redirect_to lab_timings_url }
      format.json { head :no_content }
    end
  end
end
