class AriclesController < ApplicationController

 
  # GET /aricles
  # GET /aricles.json
  def index
    @aricles = Aricle.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @aricles }
    end
  end

  # GET /aricles/1
  # GET /aricles/1.json
  def show
    @aricle = Aricle.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @aricle }
    end
  end

  # GET /aricles/new
  # GET /aricles/new.json
  def new
    @aricle = Aricle.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @aricle }
    end
  end

  # GET /aricles/1/edit
  def edit
    @aricle = Aricle.find(params[:id])
  end

  # POST /aricles
  # POST /aricles.json
  def create
    @aricle = Aricle.new(params[:aricle])

    respond_to do |format|
      if @aricle.save
        format.html { redirect_to @aricle, notice: 'Aricle was successfully created.' }
        format.json { render json: @aricle, status: :created, location: @aricle }
      else
        format.html { render action: "new" }
        format.json { render json: @aricle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /aricles/1
  # PUT /aricles/1.json
  def update
    @aricle = Aricle.find(params[:id])

    respond_to do |format|
      if @aricle.update_attributes(params[:aricle])
        format.html { redirect_to @aricle, notice: 'Aricle was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @aricle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aricles/1
  # DELETE /aricles/1.json
  def destroy
    @aricle = Aricle.find(params[:id])
    @aricle.destroy

    respond_to do |format|
      format.html { redirect_to aricles_url }
      format.json { head :no_content }
    end
  end
end
