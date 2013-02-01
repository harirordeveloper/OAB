class ApplicationController < ActionController::Base
  protect_from_forgery

include SimpleCaptcha::ControllerHelpers


def check
    @user=User.new
    @user = current_user        #To get the currently loged in user
    @clinics = @user.clinics    #It displays the clinics associated with taht user
    $clinics=@clinics 

    @clinicbranches =$clinics[0].clinicbranches
    $clinicbranches=@clinicbranches
end

def check_lab
    @user=User.new
    @user = current_user        #To get the currently loged in user
    @labs = @user.labs    #It displays the clinics associated with taht user
    $labs=@labs 

    @labbranches =$labs[0].labbranches
    $labbranches=@labbranches
end

def after_sign_in_path_for(resource)
  loginpage_path
end

end
