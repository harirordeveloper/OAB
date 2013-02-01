class DoctorFlowsController < ApplicationController

  #clinics profile page
  def profile
 @clinic_id=params[:clinic_id]
    #@clinic_profile = ClinicProfileMaster.find_by_clinic_id("#{params[:clinic_id]}")
    @doctor = ConsultantMaster.find_by_id("#{params[:doctor_id]}")
   

  timings = []
  @date = []
  @times = [[]]
  @times1 = [[]]
  @json = []
  yyyy= []
  mm= []
  dd= []
  epoch_seconds = []
  j=0
     for i in 0...364
      #To find the days sequentially from today to one week
      
           day = DateTime.now.next_day(i).strftime("%a")
      #find the timing object contains the doctor id and the day(ex:mon)
       
       timings[i] = DoctorTiming.find_by_consultant_master_id_and_day(@doctor.id,day.upcase)
      #split the date and pass it to year month and day
       yyyy[i], mm[i], dd[i] = $1, $2, $3 if DateTime.now.next_day(i).strftime("%Y-%m-%d").to_s =~ /(\d+)-(\d+)-(\d+)/
      #convert the given data into epoch seconds 
         @date[i] = Time.mktime(yyyy[i], mm[i], dd[i])
      epoch_seconds[i] = Time.mktime(yyyy[i], mm[i], dd[i]).tv_sec
	
	      #multiply the value with 1000 to equate it with jquery calender parameters   
	 
	          @json[i] =  epoch_seconds[i]*1000
	   end
       #this is to divide time into slices(15minutes each)
             
             k=0
        for j in 0...timings.length
               count = 0
            start_time=timings[j].morning_from 
		      while(start_time<timings[j].morning_to)
				@times[k+=1]=start_time.strftime("%R AM").to_s+" to "+(start_time+=15*60).strftime("%R AM").to_s#morning shift
		        count+=1
		         
		      end
       #divide the total array into slices using the count variable 
	      @all = @times.each_slice(count).to_a
        end
            l=0
        for m in 0...timings.length
               count = 0
            start_time=timings[m].evening_from 
		      while(start_time<timings[m].evening_to)
				@times1[l+=1]=start_time.strftime("%R PM").to_s+" to "+(start_time+=15*60).strftime("%R PM").to_s#evening shift
		        count+=1
		         
		      end
       #divide the total array into slices using the count variable 
	       @all1= @times1.each_slice(count).to_a

        end
 
end




 def doc_profile
 @clinic_id=params[:clinic_id]
    #@clinic_profile = ClinicProfileMaster.find_by_clinic_id("#{params[:clinic_id]}")
    @doctor = ConsultantMaster.find_by_id("#{params[:doctor_id]}")
   

  timings = []
  @date = []
  @times = [[]]
  @times1 = [[]]
  @json = []
  yyyy= []
  mm= []
  dd= []
  epoch_seconds = []
  j=0
     for i in 0...364
      #To find the days sequentially from today to one week
      
           day = DateTime.now.next_day(i).strftime("%a")
      #find the timing object contains the doctor id and the day(ex:mon)
       
       timings[i] = DoctorTiming.find_by_consultant_master_id_and_day(@doctor.id,day.upcase)
      #split the date and pass it to year month and day
       yyyy[i], mm[i], dd[i] = $1, $2, $3 if DateTime.now.next_day(i).strftime("%Y-%m-%d").to_s =~ /(\d+)-(\d+)-(\d+)/
      #convert the given data into epoch seconds 
         @date[i] = Time.mktime(yyyy[i], mm[i], dd[i])
      epoch_seconds[i] = Time.mktime(yyyy[i], mm[i], dd[i]).tv_sec
	
	      #multiply the value with 1000 to equate it with jquery calender parameters   
	 
	          @json[i] =  epoch_seconds[i]*1000
	   end
       #this is to divide time into slices(15minutes each)
             
             k=0
        for j in 0...timings.length
               count = 0
            start_time=timings[j].morning_from 
		      while(start_time<timings[j].morning_to)
				@times[k+=1]=start_time.strftime("%R AM").to_s+" to "+(start_time+=15*60).strftime("%R AM").to_s#morning shift
		        count+=1
		         
		      end
       #divide the total array into slices using the count variable 
	      @all = @times.each_slice(count).to_a
        end
            l=0
        for m in 0...timings.length
               count = 0
            start_time=timings[m].evening_from 
		      while(start_time<timings[m].evening_to)
				@times1[l+=1]=start_time.strftime("%R PM").to_s+" to "+(start_time+=15*60).strftime("%R PM").to_s#evening shift
		        count+=1
		         
		      end
       #divide the total array into slices using the count variable 
	       @all1= @times1.each_slice(count).to_a

        end
 
end








def doctorprofile
 @clinic_id=params[:clinic_id]
    #@clinic_profile = ClinicProfileMaster.find_by_clinic_id("#{params[:clinic_id]}")
    @doctor = ConsultantMaster.find_by_id("#{params[:doctor_id]}")
   
end
  # GET /doctor_flows
  # GET /doctor_flows.json
  def index
    @doctor_flows = DoctorFlow.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @doctor_flows }
    end
  end

  # GET /doctor_flows/1
  # GET /doctor_flows/1.json
  def show
    @doctor_flow = DoctorFlow.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @doctor_flow }
    end
  end

  # GET /doctor_flows/new
  # GET /doctor_flows/new.json
  def new
    @doctor_flow = DoctorFlow.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @doctor_flow }
    end
  end

  # GET /doctor_flows/1/edit
  def edit
    @doctor_flow = DoctorFlow.find(params[:id])
  end

  # POST /doctor_flows
  # POST /doctor_flows.json
  def create
    @doctor_flow = DoctorFlow.new(params[:doctor_flow])

    respond_to do |format|
      if @doctor_flow.save
        format.html { redirect_to @doctor_flow, notice: 'Doctor flow was successfully created.' }
        format.json { render json: @doctor_flow, status: :created, location: @doctor_flow }
      else
        format.html { render action: "new" }
        format.json { render json: @doctor_flow.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /doctor_flows/1
  # PUT /doctor_flows/1.json
  def update
    @doctor_flow = DoctorFlow.find(params[:id])

    respond_to do |format|
      if @doctor_flow.update_attributes(params[:doctor_flow])
        format.html { redirect_to @doctor_flow, notice: 'Doctor flow was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @doctor_flow.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doctor_flows/1
  # DELETE /doctor_flows/1.json
  def destroy
    @doctor_flow = DoctorFlow.find(params[:id])
    @doctor_flow.destroy

    respond_to do |format|
      format.html { redirect_to doctor_flows_url }
      format.json { head :no_content }
    end
  end
end
