class TestGroupsController < ApplicationController
  def sidebar
     render :layout => 'masteradmin'
  end
  # GET /test_groups
  # GET /test_groups.json
  def index
    @test_groups = TestGroup.all
render :layout=>'empty_layout'

  end

  # GET /test_groups/1
  # GET /test_groups/1.json
  def show
    @test_group = TestGroup.find(params[:id])

    render :layout=>'empty_layout'
  end

  # GET /test_groups/new
  # GET /test_groups/new.json
  def new
    @test_group = TestGroup.new

    render :layout=>'empty_layout'
  end

  # GET /test_groups/1/edit
  def edit
    @test_group = TestGroup.find(params[:id])
render :layout=>'empty_layout'
  end

  # POST /test_groups
  # POST /test_groups.json
  def create
    @test_group = TestGroup.new(params[:test_group])
         respond_to do |format|
           
    	    format.js { render :content_type => 'text/javascript'}
           
  	 end
  end

  # PUT /test_groups/1
  # PUT /test_groups/1.json
  def update
    @test_group = TestGroup.find(params[:id])

    respond_to do |format|
      if @test_group.update_attributes(params[:test_group])
        format.html { redirect_to @test_group, notice: 'Test group was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @test_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_groups/1
  # DELETE /test_groups/1.json
  def destroy
    @test_group = TestGroup.find(params[:id])
    @test_group.destroy

    respond_to do |format|
      format.html { redirect_to test_groups_url }
      format.json { head :no_content }
    end
  end
end
