class LocationmapsController < ApplicationController
  # GET /locationmaps
  # GET /locationmaps.json
  def index
    @locationmaps = Locationmap.all
    
    @json=Locationmap.all.to_gmaps4rails

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @locationmaps }
    end
  end

  # GET /locationmaps/1
  # GET /locationmaps/1.json
  def show
    @locationmap = Locationmap.find(params[:id])
    @json=@locationmap.to_gmaps4rails

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @locationmap }
    end
  end

  # GET /locationmaps/new
  # GET /locationmaps/new.json
  def new
    @locationmap = Locationmap.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @locationmap }
    end
  end

  # GET /locationmaps/1/edit
  def edit
    @locationmap = Locationmap.find(params[:id])
  end

  # POST /locationmaps
  # POST /locationmaps.json
  def create
    @locationmap = Locationmap.new(params[:locationmap])

    respond_to do |format|
      if @locationmap.save
        format.html { redirect_to @locationmap, notice: 'Locationmap was successfully created.' }
        format.json { render json: @locationmap, status: :created, location: @locationmap }
      else
        format.html { render action: "new" }
        format.json { render json: @locationmap.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /locationmaps/1
  # PUT /locationmaps/1.json
  def update
    @locationmap = Locationmap.find(params[:id])

    respond_to do |format|
      if @locationmap.update_attributes(params[:locationmap])
        format.html { redirect_to @locationmap, notice: 'Locationmap was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @locationmap.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /locationmaps/1
  # DELETE /locationmaps/1.json
  def destroy
    @locationmap = Locationmap.find(params[:id])
    @locationmap.destroy

    respond_to do |format|
      format.html { redirect_to locationmaps_url }
      format.json { head :no_content }
    end
  end
end
