class OrgDetailsController < ApplicationController
  # GET /org_details
  # GET /org_details.json
  layout 'login'
  def index
    @org_details = OrgDetail.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @org_details }
    end
  end

  # GET /org_details/1
  # GET /org_details/1.json
  def show
    @org_detail = OrgDetail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @org_detail }
    end
  end

  # GET /org_details/new
  # GET /org_details/new.json
  def new
    @org_detail = OrgDetail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @org_detail }
    end
  end

  # GET /org_details/1/edit
  def edit
    @org_detail = OrgDetail.find(params[:id])
  end

  # POST /org_details
  # POST /org_details.json
  def create
    @org_detail = OrgDetail.new(params[:org_detail])

    respond_to do |format|
      if @org_detail.save
        format.html { redirect_to @org_detail, notice: 'Org detail was successfully created.' }
        format.json { render json: @org_detail, status: :created, location: @org_detail }
      else
        format.html { render action: "new" }
        format.json { render json: @org_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /org_details/1
  # PUT /org_details/1.json
  def update
    @org_detail = OrgDetail.find(params[:id])

    respond_to do |format|
      if @org_detail.update_attributes(params[:org_detail])
        format.html { redirect_to @org_detail, notice: 'Org detail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @org_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /org_details/1
  # DELETE /org_details/1.json
  def destroy
    @org_detail = OrgDetail.find(params[:id])
    @org_detail.destroy

    respond_to do |format|
      format.html { redirect_to org_details_url }
      format.json { head :no_content }
    end
  end
end
