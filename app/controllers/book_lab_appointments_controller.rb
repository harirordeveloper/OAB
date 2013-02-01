class BookLabAppointmentsController < ApplicationController
 layout 'bookappointments'
 def complete
 end
 # GET /book_lab_appointments
  # GET /book_lab_appointments.json
  def index
    @book_lab_appointments = BookLabAppointment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @book_lab_appointments }
    end
  end


  # GET /book_lab_appointments/1
  # GET /book_lab_appointments/1.json
  def show
    @book_lab_appointment = BookLabAppointment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @book_lab_appointment }
    end
  end

  # GET /book_lab_appointments/new
  # GET /book_lab_appointments/new.json
  def new

     $c = params[:clinic_id]
     $do = params[:doctor]
     $t = params[:time]
     $d = params[:date]

     @clinic_id = params[:clinic_id]       

     @clinic = Clinic.find_by_id("#{params[:clinic_id]}")

    @appointmentdetails = ConsultantMaster.find_by_id(params[:doctor])
    @doctor = ConsultantMaster.find_by_id("#{params[:doctor]}")
  
  $doc=@doctor.name
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


     @appointment_time=params[:time]
     @appointment_date=params[:date]
      @appointment_clinic=Clinic.find_by_id(params[:clinic_id])
      
    @appointmentlocation=Clinic.find_by_id(params[:doctor])
    @book_lab_appointment = book_lab_appointment.new
      
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @book_lab_appointment }
    end
  end

  # GET /book_lab_appointments/1/edit
  def edit
    @book_lab_appointment = BookLabAppointment.find(params[:id])
  end

  # POST /book_lab_appointments
  # POST /book_lab_appointments.json
  def create
     
     @lab = params[:lab]
     @lab_name = Lab.find(@lab) 
    @l_name = @lab_name.name
    @book_lab_appointment = BookLabAppointment.new(params[:book_lab_appointment])
     @location = Location.find(1)
     @loc_name = @location.name
    @appointment = @book_lab_appointment

    @fee = params[:amount]
     @test = params[:total_tests]
     @l_address = @lab_name.address1
     @l_phone   = @lab_name.phonenum
     @t = @test.split("\r\n")
     t3 = ""
     for i in 0...@t.length
        t3 << @t[i].to_s
     end 
     @aptdate = @book_lab_appointment.aptdate

mobile_no = @appointment.phonenum
message="Healthcare Online mTicket
Patient Name :
#{@book_lab_appointment.name} 
Apt.Date : #{@aptdate.to_s} , 
Fee  #{@fee.to_s},
Lab :#{@lab_name.name},
Address :
#{@lab_name.address1},
Location : #{@location.name},
Contact No : #{ @lab_name.phonenum}. 
---------- 
Thanks for using Healthcare Online please present this ticket at the time of Consultation. 
Help Line :040-40203231
   T&C apply "

   respond_to do |format| 

     if simple_captcha_valid? ||  @book_lab_appointment.save

      Notifier.lab_appintment_attachments(@appointment,@aptdate,t3,@l_name,@loc_name,@l_address,@l_phone,@fee) 

      Notifier.lab_appointment_status(@appointment,@aptdate,@l_name,@loc_name).deliver 

      s=SmsIntegration.new(mobile_no,message)
      s.sendSMS() 
    
      format.html { redirect_to :action => "complete" }
            else
      
        format.html { redirect_to :controller => "lab_flows", :action => "booktest", :lab_id => @lab }
        
            
end
    end
end
   

  # PUT /book_lab_appointments/1
  # PUT /book_lab_appointments/1.json
  def update
    @book_lab_appointment = BookLabAppointment.find(params[:id])

    respond_to do |format|
      if @book_lab_appointment.update_attributes(params[:book_lab_appointment])
        format.html { redirect_to @book_lab_appointment, notice: 'book_lab_appointment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @book_lab_appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book_lab_appointments/1
  # DELETE /book_lab_appointments/1.json
 
def destroy
    @book_lab_appointment = BookLabAppointment.find(params[:id])
    @book_lab_appointment.destroy

    respond_to do |format|
      format.html { redirect_to book_lab_appointments_url }
      format.json { head :no_content }
    end
  end




end
