class Notifier < ActionMailer::Base
require 'rubygems'
require 'thinreports'
 



default from: "apptbookings@exleaz.com"

  def appointment_status(appointment,apttime,aptdate,name,location,doc)
        
   
    attachments['APPOINTMENT.pdf'] = File.read('app/views/bookappointments/APPOINTMENT.pdf')
 @appointment = appointment
@apt_time=apttime
@apt_date=aptdate
@clinic_name=name
@location=location
@doc=doc

   mail :to=>appointment.email,:subject=>"Your appointment has been booked "
  end





def appintment_attachments(appointment,apttime,aptdate,name,location,doc,addr,phn,fee)

     @appointment = appointment
     @apt_time=apttime
     @apt_date=aptdate
     @clinic_name=name
     @location=location
     @doc=doc
     @clinic_address=addr
     @clinic_phone=phn
     @fee=fee

puts "#######################################################################################"
puts "got call for me"

puts @apt_time

puts "#######################################################################################"
ThinReports::Report.generate_file('app/views/bookappointments/APPOINTMENT.pdf') do
    use_layout 'app/views/bookappointments/booking.tlf'
    start_new_page do
        	
            item(:doctor_name).value doc
            item(:hname).value name
            item(:loc).value location.name
            item(:appt_time).value apttime
            item(:appt_date).value aptdate
            item(:fee).value fee
            item(:add1).value addr 
             item(:appt_number).value appointment.id
            
	   
	  
           item(:phno1).value phn
           item(:phno2).value 
            item(:phno3).value 

       end
     
  end

end
 def lab_appointment_status(appointment,aptdate,name,location)
     attachments['LAB_APPOINTMENT.pdf'] = File.read('app/views/book_lab_appointments/LAB_APPOINTMENT.pdf')
    @appointment = appointment
    @apt_date=aptdate
    @lab_name=name
    @location=location
     mail :to=>appointment.email,:subject=>"Your appointment has been booked "  
end
def lab_appintment_attachments(appointment,aptdate,t,name,location,addr,phn,fee)

     @appointment = appointment
     
     @apt_date=aptdate
     @lab_name=name
     @location=location

     @lab_address=addr
     @lab_phone=phn
     @fee=fee


ThinReports::Report.generate_file('app/views/book_lab_appointments/LAB_APPOINTMENT.pdf') do
    use_layout 'app/views/book_lab_appointments/lab_booking.tlf'
    start_new_page do
        	
            
            item(:lname).value name
            item(:tname).value t
            item(:loc).value location

            item(:test_date).value aptdate
            item(:fee).value fee
          
	   item(:add1).value addr 
	  
	    
           item(:phno1).value phn
          

       end
     
  end
end


end
