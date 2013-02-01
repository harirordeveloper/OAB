class TestMastersController < ApplicationController
  # GET /test_masters
  # GET /test_masters.json
  def index
    @test_masters = TestMaster.all
render :layout=>'empty_layout'
  end

  # GET /test_masters/1
  # GET /test_masters/1.json
  def show
    @test_master = TestMaster.find(params[:id])

    render :layout=>'empty_layout'
  end

  # GET /test_masters/new
  # GET /test_masters/new.json
  def new
    @test_master = TestMaster.new

    render :layout=>'empty_layout'
  end

  # GET /test_masters/1/edit
  def edit
    @test_master = TestMaster.find(params[:id])
render :layout=>'empty_layout'
  end

  # POST /test_masters
  # POST /test_masters.json
  def create
    @test_master = TestMaster.new(params[:test_master])

     respond_to do |format|
           
    	    format.js { render :content_type => 'text/javascript'}
           
     end

  end

  # PUT /test_masters/1
  # PUT /test_masters/1.json
  def update
    @test_master = TestMaster.find(params[:id])

    respond_to do |format|
      if @test_master.update_attributes(params[:test_master])
        format.html { redirect_to @test_master, notice: 'Test master was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @test_master.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_masters/1
  # DELETE /test_masters/1.json
  def destroy
    @test_master = TestMaster.find(params[:id])
    @test_master.destroy

    respond_to do |format|
      format.html { redirect_to test_masters_url }
      format.json { head :no_content }
    end
  end
end
