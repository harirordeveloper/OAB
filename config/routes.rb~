LIMS::Application.routes.draw do
  
  
match 'send_text/send_text_message'=>"send_text#send_text_message"
  
 
match 'bookappointments/complete'=>"bookappointments#complete"
match 'bookappointments/doctor_appointment'=>"bookappointments#doctor_appointment"
match 'bookappointments/doctor_appointment_create'=>"bookappointments#doctor_appointment_create"


 

  
 match 'loginpage'=> 'masteradmin#index'

  devise_scope :user do
      get "register"  => "devise/registrations#new" 
      get "login"  => "devise/sessions#new"    
      get "users/logout" => "devise/sessions#destroy"
     
  end 



  devise_for :users,path_names: {sign_in:"login",sign_out:"logout"}
  
    match 'home/index' => 'home#index'
     match 'home/feedback' => 'home#feedback'
    match 'home/aboutus' => 'home#aboutus'
    match 'home/labs' => 'home#labs'
    match 'home/partners' => 'home#partners'
    match 'home/search' => 'home#search'
    match 'home/support' => 'home#support'
    match 'home/hospitals_clinics' => 'home#hospitals_clinics'
      match 'home/state' => 'home#state'
   match 'home/city' => 'home#city'
 match 'home/searchclinic' => 'home#searchclinic'
 match 'home/searchlab' => 'home#searchlab'

match 'lab_flows/booktest' => 'lab_flows#booktest'

    match 'home/hospitals_labs' => 'home#hospitals_labs'
    match 'labs/sidebar' => 'labs#sidebar'
    match 'labbranches/sidebar' => 'labbranches#sidebar'
    match 'lab_profile_masters/sidebar' => 'lab_profile_masters#sidebar' 

    match 'labs/droptable' => 'labs#droptable'
    match 'lab_flows/search' => 'lab_flows#search'
    match 'lab_flows/profile' => 'lab_flows#profile' 
    match 'lab_flows/appointment' => 'lab_flows#appointment'
    match 'lab_flows/doctors' => 'lab_flows#doctors'
 





    match 'clinics/sidebar' => 'clinics#sidebar'
    match 'clinicbranches/sidebar' => 'clinicbranches#sidebar'
    match 'consultant_masters/sidebar' => 'consultant_masters#sidebar'
    
    
    match 'specialities/sidebar' => 'specialities#sidebar'
    match 'specalities_masters/sidebar' => 'specalities_masters#sidebar'
    match 'specialities/index' => 'specialities#index'
    match 'clinic_profile_masters/sidebar' => 'clinic_profile_masters#sidebar' 
    match 'masteradmin' => 'masteradmin#index'  
    match 'doctor_assignments/search' => 'doctor_assignments#search'
    match 'doctor_assignments/fields' => 'doctor_assignments#fields'
    match 'doctor_assignments/branch' => 'doctor_assignments#branch'
    match 'doctor_assignments/sidebar' => 'doctor_assignments#sidebar'
    match 'specialities/branch' => 'specialities#branch'
     match 'specialities/lab_branch' => 'specialities#lab_branch'
    
    
match 'specialities/assignment' => 'specialities#assignment'
match 'specalities_masters/index' => 'specalities_masters#index'



match 'doctor_flows/doctorprofile' => 'doctor_flows#doctorprofile'

    match 'clinics/droptable' => 'clinics#droptable'
    match 'clinic_flows/search' => 'clinic_flows#search'
    match 'clinic_flows/profile' => 'clinic_flows#profile' 
    match 'clinic_flows/appointment' => 'clinic_flows#appointment'
    match 'clinic_flows/doctors' => 'clinic_flows#doctors'

    match 'doctor_flows/profile' => 'doctor_flows#profile'
    match 'doctor_flows/doc_profile' => 'doctor_flows#doc_profile'

 #for lab with tests
  match 'test_masters/params_clone' => 'test_masters#params_clone'
  match 'test_masters/sidebar' => 'test_masters#sidebar'


match 'book_lab_appointments/complete' => 'book_lab_appointments#complete'

match 'test_groups/sidebar' => 'test_groups#sidebar'

match 'lab_flows/branch' => 'lab_flows#branch'
  resources :test_masters
  resources :test_groups
  resources :test_sub_groups
  resources :charge_masters
  resources :corporate_health_packages
  resources :test_masters
  resources :test_groups


resources :book_lab_appointments
  resources :doctor_educations
  resources :timings

  resources :doctor_timings

  resources :clinic_timings

  resources :doctor_assignments

  resources :clinic_profile_masters

  resources :specalities_masters

  resources :consultant_masters
  resources :doctor_flows

resources :lab_timings
 resources :lab_profile_masters
resources :labbranches

resources :labs
resources :lab_specialities
resources :lab_specalities_masters

  resources :org_details

  resources :doctor_details

  resources :patient_details

 #match 'clinics/home' => 'clinics#home'
 
  
  
  #devise_for :admins

  root :to => 'home#index'
  match 'locations/doctor_search' => 'locations#doctor_search'
  match 'locations/labsearch' => 'locations#labsearch'
   match 'locations/fields' => 'locations#fields' 
  match 'locations/search' => 'locations#search'
   match 'cities/search' => 'cities#search'
match 'cities' => 'cities#new'
  

  get "appointment/index"

  get "test_booking/index"
  resources :specialities

  resources :clinicbranches
  resources :consultants
  resources :clinics
  resources :lab_flows
  resources :locations

  resources :locationmaps
  resources :clinic_flows


  get "cities/search"

  resources :articles
  resources :products do
           collection { post :search, to: 'products#index' }
  end
  resources :products
  resources :aricles
  resources :cities  

  resources :demos

  resources :bookappointments
  
end
