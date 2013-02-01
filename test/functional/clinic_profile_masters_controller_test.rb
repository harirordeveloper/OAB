require 'test_helper'

class ClinicProfileMastersControllerTest < ActionController::TestCase
  setup do
    @clinic_profile_master = clinic_profile_masters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clinic_profile_masters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clinic_profile_master" do
    assert_difference('ClinicProfileMaster.count') do
      post :create, clinic_profile_master: { about: @clinic_profile_master.about, packages: @clinic_profile_master.packages, photo1: @clinic_profile_master.photo1, photo2: @clinic_profile_master.photo2, photo3: @clinic_profile_master.photo3, photo4: @clinic_profile_master.photo4, photo5: @clinic_profile_master.photo5, services: @clinic_profile_master.services }
    end

    assert_redirected_to clinic_profile_master_path(assigns(:clinic_profile_master))
  end

  test "should show clinic_profile_master" do
    get :show, id: @clinic_profile_master
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clinic_profile_master
    assert_response :success
  end

  test "should update clinic_profile_master" do
    put :update, id: @clinic_profile_master, clinic_profile_master: { about: @clinic_profile_master.about, packages: @clinic_profile_master.packages, photo1: @clinic_profile_master.photo1, photo2: @clinic_profile_master.photo2, photo3: @clinic_profile_master.photo3, photo4: @clinic_profile_master.photo4, photo5: @clinic_profile_master.photo5, services: @clinic_profile_master.services }
    assert_redirected_to clinic_profile_master_path(assigns(:clinic_profile_master))
  end

  test "should destroy clinic_profile_master" do
    assert_difference('ClinicProfileMaster.count', -1) do
      delete :destroy, id: @clinic_profile_master
    end

    assert_redirected_to clinic_profile_masters_path
  end
end
