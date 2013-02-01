require 'test_helper'

class ClinicsControllerTest < ActionController::TestCase
  setup do
    @clinic = clinics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clinics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clinic" do
    assert_difference('Clinic.count') do
      post :create, clinic: { address1: @clinic.address1, address2: @clinic.address2, altemail: @clinic.altemail, branches: @clinic.branches, choosefile: @clinic.choosefile, city: @clinic.city, cliniccode: @clinic.cliniccode, country: @clinic.country, discontinue: @clinic.discontinue, displayname: @clinic.displayname, email: @clinic.email, expdate: @clinic.expdate, fax: @clinic.fax, landmarks: @clinic.landmarks, location: @clinic.location, name: @clinic.name, pin: @clinic.pin, state: @clinic.state, website: @clinic.website }
    end

    assert_redirected_to clinic_path(assigns(:clinic))
  end

  test "should show clinic" do
    get :show, id: @clinic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clinic
    assert_response :success
  end

  test "should update clinic" do
    put :update, id: @clinic, clinic: { address1: @clinic.address1, address2: @clinic.address2, altemail: @clinic.altemail, branches: @clinic.branches, choosefile: @clinic.choosefile, city: @clinic.city, cliniccode: @clinic.cliniccode, country: @clinic.country, discontinue: @clinic.discontinue, displayname: @clinic.displayname, email: @clinic.email, expdate: @clinic.expdate, fax: @clinic.fax, landmarks: @clinic.landmarks, location: @clinic.location, name: @clinic.name, pin: @clinic.pin, state: @clinic.state, website: @clinic.website }
    assert_redirected_to clinic_path(assigns(:clinic))
  end

  test "should destroy clinic" do
    assert_difference('Clinic.count', -1) do
      delete :destroy, id: @clinic
    end

    assert_redirected_to clinics_path
  end
end
