class CorporateHealthPackageChildrenController < ApplicationController
  # GET /corporate_health_package_children
  # GET /corporate_health_package_children.xml
  def index
    @corporate_health_package_children = CorporateHealthPackageChild.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @corporate_health_package_children }
    end
  end

  # GET /corporate_health_package_children/1
  # GET /corporate_health_package_children/1.xml
  def show
    @corporate_health_package_child = CorporateHealthPackageChild.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @corporate_health_package_child }
    end
  end

  # GET /corporate_health_package_children/new
  # GET /corporate_health_package_children/new.xml
  def new
    @corporate_health_package_child = CorporateHealthPackageChild.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @corporate_health_package_child }
    end
  end

  # GET /corporate_health_package_children/1/edit
  def edit
    @corporate_health_package_child = CorporateHealthPackageChild.find(params[:id])
  end

  # POST /corporate_health_package_children
  # POST /corporate_health_package_children.xml
  def create
    @corporate_health_package_child = CorporateHealthPackageChild.new(params[:corporate_health_package_child])

    respond_to do |format|
      if @corporate_health_package_child.save
        format.html { redirect_to(@corporate_health_package_child, :notice => 'CorporateHealthPackageChild was successfully created.') }
        format.xml  { render :xml => @corporate_health_package_child, :status => :created, :location => @corporate_health_package_child }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @corporate_health_package_child.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /corporate_health_package_children/1
  # PUT /corporate_health_package_children/1.xml
  def update
    @corporate_health_package_child = CorporateHealthPackageChild.find(params[:id])

    respond_to do |format|
      if @corporate_health_package_child.update_attributes(params[:corporate_health_package_child])
        format.html { redirect_to(@corporate_health_package_child, :notice => 'CorporateHealthPackageChild was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @corporate_health_package_child.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /corporate_health_package_children/1
  # DELETE /corporate_health_package_children/1.xml
  def destroy
    @corporate_health_package_child = CorporateHealthPackageChild.find(params[:id])
    @corporate_health_package_child.destroy

    respond_to do |format|
      format.html { redirect_to(corporate_health_package_children_url) }
      format.xml  { head :ok }
    end
  end
end
