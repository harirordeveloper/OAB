class TimingsController < ApplicationController
  # GET /timings
  # GET /timings.json
  def index
    @timings = Timing.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @timings }
    end
  end

  # GET /timings/1
  # GET /timings/1.json
  def show
    @timing = Timing.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @timing }
    end
  end

  # GET /timings/new
  # GET /timings/new.json
  def new
    @timing = Timing.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @timing }
    end
  end

  # GET /timings/1/edit
  def edit
    @timing = Timing.find(params[:id])
  end

  # POST /timings
  # POST /timings.json
  def create
    @timing = Timing.new(params[:timing])
       
   
            if(params[:timing].to_s =~ /doctor_assignments_attributes/)
		       respond_to do |format|
		          for timing in @timing.doctor_assignments
			     timing.clinic_id=params[:clinic_id]
                             timing.clinicbranch_id=params[:clinicbranch_id]
                             timing.save
		          end 
		       format.html { redirect_to('/doctor_assignments/new') }
			    
	               end
           elsif(params[:timing].to_s =~ /doctor_timings_attributes/)
                 respond_to do |format|
                         for timing in @timing.doctor_timings
			    if timing.consultant_master_id
                              timing.save
                            end
                         end
			  format.html { redirect_to('/doctor_timings/new') }
	         end
           else

               respond_to do |format|
		      if @timing.save
			format.html { redirect_to @timing, notice: 'Timing was successfully created.' }
			format.json { render json: @timing, status: :created, location: @timing }
		      else
			format.html { render action: "new" }
			format.json { render json: @timing.errors, status: :unprocessable_entity }
		      end
	       end
          end
  end

  # PUT /timings/1
  # PUT /timings/1.json
  def update
    @timing = Timing.find(params[:id])

    respond_to do |format|
      if @timing.update_attributes(params[:timing])
        format.html { redirect_to @timing, notice: 'Timing was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @timing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /timings/1
  # DELETE /timings/1.json
  def destroy
    @timing = Timing.find(params[:id])
    @timing.destroy

    respond_to do |format|
      format.html { redirect_to timings_url }
      format.json { head :no_content }
    end
  end
end
