require 'test_helper'

class ClinicbranchesControllerTest < ActionController::TestCase
  setup do
    @clinicbranch = clinicbranches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clinicbranches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clinicbranch" do
    assert_difference('Clinicbranch.count') do
      post :create, clinicbranch: { address1: @clinicbranch.address1, address2: @clinicbranch.address2, altemail: @clinicbranch.altemail, branches: @clinicbranch.branches, choosefile: @clinicbranch.choosefile, city: @clinicbranch.city, clinic_cliniccode: @clinicbranch.clinic_cliniccode, cliniccode: @clinicbranch.cliniccode, country: @clinicbranch.country, discontinue: @clinicbranch.discontinue, displayname: @clinicbranch.displayname, email: @clinicbranch.email, expdate: @clinicbranch.expdate, fax: @clinicbranch.fax, landmarks: @clinicbranch.landmarks, location: @clinicbranch.location, name: @clinicbranch.name, pin: @clinicbranch.pin, state: @clinicbranch.state, website: @clinicbranch.website }
    end

    assert_redirected_to clinicbranch_path(assigns(:clinicbranch))
  end

  test "should show clinicbranch" do
    get :show, id: @clinicbranch
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clinicbranch
    assert_response :success
  end

  test "should update clinicbranch" do
    put :update, id: @clinicbranch, clinicbranch: { address1: @clinicbranch.address1, address2: @clinicbranch.address2, altemail: @clinicbranch.altemail, branches: @clinicbranch.branches, choosefile: @clinicbranch.choosefile, city: @clinicbranch.city, clinic_cliniccode: @clinicbranch.clinic_cliniccode, cliniccode: @clinicbranch.cliniccode, country: @clinicbranch.country, discontinue: @clinicbranch.discontinue, displayname: @clinicbranch.displayname, email: @clinicbranch.email, expdate: @clinicbranch.expdate, fax: @clinicbranch.fax, landmarks: @clinicbranch.landmarks, location: @clinicbranch.location, name: @clinicbranch.name, pin: @clinicbranch.pin, state: @clinicbranch.state, website: @clinicbranch.website }
    assert_redirected_to clinicbranch_path(assigns(:clinicbranch))
  end

  test "should destroy clinicbranch" do
    assert_difference('Clinicbranch.count', -1) do
      delete :destroy, id: @clinicbranch
    end

    assert_redirected_to clinicbranches_path
  end
end
