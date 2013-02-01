class DoctorEducationsController < ApplicationController
  # GET /doctor_educations
  # GET /doctor_educations.json
  def index
    @doctor_educations = DoctorEducation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @doctor_educations }
    end
  end

  # GET /doctor_educations/1
  # GET /doctor_educations/1.json
  def show
    @doctor_education = DoctorEducation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @doctor_education }
    end
  end

  # GET /doctor_educations/new
  # GET /doctor_educations/new.json
  def new
    @doctor_education = DoctorEducation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @doctor_education }
    end
  end

  # GET /doctor_educations/1/edit
  def edit
    @doctor_education = DoctorEducation.find(params[:id])
  end

  # POST /doctor_educations
  # POST /doctor_educations.json
  def create
    @doctor_education = DoctorEducation.new(params[:doctor_education])

    respond_to do |format|
      if @doctor_education.save
        format.html { redirect_to @doctor_education, notice: 'Doctor education was successfully created.' }
        format.json { render json: @doctor_education, status: :created, location: @doctor_education }
      else
        format.html { render action: "new" }
        format.json { render json: @doctor_education.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /doctor_educations/1
  # PUT /doctor_educations/1.json
  def update
    @doctor_education = DoctorEducation.find(params[:id])

    respond_to do |format|
      if @doctor_education.update_attributes(params[:doctor_education])
        format.html { redirect_to @doctor_education, notice: 'Doctor education was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @doctor_education.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doctor_educations/1
  # DELETE /doctor_educations/1.json
  def destroy
    @doctor_education = DoctorEducation.find(params[:id])
    @doctor_education.destroy

    respond_to do |format|
      format.html { redirect_to doctor_educations_url }
      format.json { head :no_content }
    end
  end
end
