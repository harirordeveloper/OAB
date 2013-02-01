class LabbranchesController < ApplicationController
  before_filter :check_lab #this loads the variable

# GET /labbranches
  # GET /labbranches.json

  def index
      @labbranches =$labs[0].labbranches
       $labbranches=@labbranches
     render :layout => 'empty_layout'
  end

  def sidebar
    render :layout => 'masteradmin'
  end

  # GET /labbranches/1
  # GET /labbranches/1.json
  def show
    @labbranch = Labbranch.find(params[:id])
      render :layout => 'empty_layout'
  end

  # GET /labbranches/new
  # GET /labbranches/new.json
  def new
    @labbranch = Labbranch.new
      render :layout => 'empty_layout'
  end

  # GET /labbranches/1/edit
  def edit
    @labbranch = labbranch.find(params[:id])
    render :layout => 'empty_layout'
  end

  # POST /labbranches
  # POST /labbranches.json
  def create
    @labbranch = labbranch.new(params[:labbranch])

    respond_to do |format|
      if @labbranch.save
        format.html { redirect_to @labbranch, notice: 'labbranch was successfully created.' }
        format.json { render json: @labbranch, status: :created, location: @labbranch }
      else
        format.html { render action: "new" }
        format.json { render json: @labbranch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /labbranches/1
  # PUT /labbranches/1.json
  def update
    @labbranch = labbranch.find(params[:id])

    respond_to do |format|
      if @labbranch.update_attributes(params[:labbranch])
        format.html { redirect_to @labbranch, notice: 'labbranch was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @labbranch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /labbranches/1
  # DELETE /labbranches/1.json
  def destroy
    @labbranch = labbranch.find(params[:id])
    @labbranch.destroy

    respond_to do |format|
      format.html { redirect_to labbranches_url }
      format.json { head :no_content }
    end
  end
end
