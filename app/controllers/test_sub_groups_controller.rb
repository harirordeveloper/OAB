class TestSubGroupsController < ApplicationController
  # GET /test_sub_groups
  # GET /test_sub_groups.json
  def index
    @test_sub_groups = TestSubGroup.all

    render :layout=>'empty_layout'
  end

  # GET /test_sub_groups/1
  # GET /test_sub_groups/1.json
  def show
    @test_sub_group = TestSubGroup.find(params[:id])

    render :layout=>'empty_layout'
  end

  # GET /test_sub_groups/new
  # GET /test_sub_groups/new.json
  def new
    @test_sub_group = TestSubGroup.new

    render :layout=>'empty_layout'
  end

  # GET /test_sub_groups/1/edit
  def edit
    @test_sub_group = TestSubGroup.find(params[:id])
   render :layout=>'empty_layout'
  end

  # POST /test_sub_groups
  # POST /test_sub_groups.json
  def create
    @test_sub_group = TestSubGroup.new(params[:test_sub_group])
    respond_to do |format|
           
    	    format.js { render :content_type => 'text/javascript'}
    end
    
  end

  # PUT /test_sub_groups/1
  # PUT /test_sub_groups/1.json
  def update
    @test_sub_group = TestSubGroup.find(params[:id])

    respond_to do |format|
      if @test_sub_group.update_attributes(params[:test_sub_group])
        format.html { redirect_to @test_sub_group, notice: 'Test sub group was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @test_sub_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_sub_groups/1
  # DELETE /test_sub_groups/1.json
  def destroy
    @test_sub_group = TestSubGroup.find(params[:id])
    @test_sub_group.destroy

    respond_to do |format|
      format.html { redirect_to test_sub_groups_url }
      format.json { head :no_content }
    end
  end
end
