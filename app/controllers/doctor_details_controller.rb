class DoctorDetailsController < ApplicationController
  # GET /doctor_details
  # GET /doctor_details.json
  layout 'login'
  def index
    @doctor_details = DoctorDetail.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @doctor_details }
    end
  end

  # GET /doctor_details/1
  # GET /doctor_details/1.json
  def show
    @doctor_detail = DoctorDetail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @doctor_detail }
    end
  end

  # GET /doctor_details/new
  # GET /doctor_details/new.json
  def new
    @doctor_detail = DoctorDetail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @doctor_detail }
    end
  end

  # GET /doctor_details/1/edit
  def edit
    @doctor_detail = DoctorDetail.find(params[:id])
  end

  # POST /doctor_details
  # POST /doctor_details.json
  def create
    @doctor_detail = DoctorDetail.new(params[:doctor_detail])

    respond_to do |format|
      if @doctor_detail.save
        format.html { redirect_to @doctor_detail, notice: 'Doctor detail was successfully created.' }
        format.json { render json: @doctor_detail, status: :created, location: @doctor_detail }
      else
        format.html { render action: "new" }
        format.json { render json: @doctor_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /doctor_details/1
  # PUT /doctor_details/1.json
  def update
    @doctor_detail = DoctorDetail.find(params[:id])

    respond_to do |format|
      if @doctor_detail.update_attributes(params[:doctor_detail])
        format.html { redirect_to @doctor_detail, notice: 'Doctor detail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @doctor_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doctor_details/1
  # DELETE /doctor_details/1.json
  def destroy
    @doctor_detail = DoctorDetail.find(params[:id])
    @doctor_detail.destroy

    respond_to do |format|
      format.html { redirect_to doctor_details_url }
      format.json { head :no_content }
    end
  end
end
