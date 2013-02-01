class CorporateHealthPackagesController < ApplicationController
  # GET /corporate_health_packages
  # GET /corporate_health_packages.xml
    # before_filter :ensure_login
  
  def index
    @corporate_health_packages = CorporateHealthPackage.all
	 @corporate_health_package = CorporateHealthPackage.new
	
	 
 	 10.times{ @corporate_health_package.corporate_health_package_children.build }
   render :layout=>'empty_layout'
  end

  # GET /corporate_health_packages/1
  # GET /corporate_health_packages/1.xml
  def show
    @corporate_health_package = CorporateHealthPackage.find(params[:id])
render :layout=>'empty_layout'
  end

  def list
	@corporate_health_packages = CorporateHealthPackage.all(:order => "id DESC")
	@button_name=params[:button_name]
   render :partial => "list"
  end

  # GET /corporate_health_packages/new
  # GET /corporate_health_packages/new.xml
  def new
    @corporate_health_package = CorporateHealthPackage.new
	 
	 10.times{ @corporate_health_package.corporate_health_package_children.build }
	render :layout=>'empty_layout'
  end

  # GET /corporate_health_packages/1/edit
  def edit
	  @session = Session.find(session[:id])
	 @person = Person.find(@session.person_id)
    @corporate_health_package = CorporateHealthPackage.find(params[:id])
	 (@corporate_health_package.corporate_health_package_children.length+10).times{ @corporate_health_package.corporate_health_package_children.build }
render :layout=>'empty_layout'
  end

  # POST /corporate_health_packages
  # POST /corporate_health_packages.xml
  def create
    @corporate_health_package = CorporateHealthPackage.new(params[:corporate_health_package])
  end

  # PUT /corporate_health_packages/1
  # PUT /corporate_health_packages/1.xml
  def update
    @corporate_health_package = CorporateHealthPackage.find(params[:id])
  end

  # DELETE /corporate_health_packages/1
  # DELETE /corporate_health_packages/1.xml
  def destroy
    @corporate_health_package = CorporateHealthPackage.find(params[:id])
    @corporate_health_package.destroy
 @session = Session.find(session[:id])
    @person = Person.find(@session.person_id)
    @corporate_health_packages = CorporateHealthPackage.all(:order => "id DESC",:conditions => "branch_code LIKE '#{@person.branch_name}%'")
    @button_name="delete"
    
	 render :partial => "list"
  end

  def get_test
	 @test_master=TestMaster.find_by_id(params[:id])
	 test_group=TestGroup.find_by_id(@test_master.test_group_id)
	 charge_master=ChargeMaster.find_by_test_master_id(@test_master.id)
	 if(charge_master)
		 render :text => test_group.group_name+"<division>"+@test_master.test_name+"<division>"+charge_master.price.to_s
	 else
		render :text => "No Amount"
	 end
  end

  def services_list
	 @corporate_health_package = CorporateHealthPackage.find(params[:id])
  end
end
