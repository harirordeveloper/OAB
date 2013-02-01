class PatientDetailsController < ApplicationController
  # GET /patient_details
  # GET /patient_details.json
  layout 'login'
  def index
    @patient_details = PatientDetail.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @patient_details }
    end
  end

  # GET /patient_details/1
  # GET /patient_details/1.json
  def show
    @patient_detail = PatientDetail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @patient_detail }
    end
  end

  # GET /patient_details/new
  # GET /patient_details/new.json
  def new
    @patient_detail = PatientDetail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @patient_detail }
    end
  end

  # GET /patient_details/1/edit
  def edit
    @patient_detail = PatientDetail.find(params[:id])
  end

  # POST /patient_details
  # POST /patient_details.json
  def create
    @patient_detail = PatientDetail.new(params[:patient_detail])
   @user = User.new
  @user.username = params[:user_name]
   @user.email = params[:email]
   @user.password = params[:password]
   @user.role="patient"
  @user.save
   @patient_detail.user_id = @user.id
    respond_to do |format|
      if @patient_detail.save
        format.html { redirect_to @patient_detail, notice: 'Patient detail was successfully created.' }
        format.json { render json: @patient_detail, status: :created, location: @patient_detail }
      else
        format.html { render action: "new" }
        format.json { render json: @patient_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /patient_details/1
  # PUT /patient_details/1.json
  def update
    @patient_detail = PatientDetail.find(params[:id])

    respond_to do |format|
      if @patient_detail.update_attributes(params[:patient_detail])
        format.html { redirect_to @patient_detail, notice: 'Patient detail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @patient_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patient_details/1
  # DELETE /patient_details/1.json
  def destroy
    @patient_detail = PatientDetail.find(params[:id])
    @patient_detail.destroy

    respond_to do |format|
      format.html { redirect_to patient_details_url }
      format.json { head :no_content }
    end
  end
end
