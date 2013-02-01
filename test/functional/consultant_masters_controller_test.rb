require 'test_helper'

class ConsultantMastersControllerTest < ActionController::TestCase
  setup do
    @consultant_master = consultant_masters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:consultant_masters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create consultant_master" do
    assert_difference('ConsultantMaster.count') do
      post :create, consultant_master: { awards_achievments: @consultant_master.awards_achievments, charge: @consultant_master.charge, conformation: @consultant_master.conformation, degree: @consultant_master.degree, expertise: @consultant_master.expertise, name: @consultant_master.name, professional_exp: @consultant_master.professional_exp, qualifications: @consultant_master.qualifications, specialities: @consultant_master.specialities, total_exp: @consultant_master.total_exp }
    end

    assert_redirected_to consultant_master_path(assigns(:consultant_master))
  end

  test "should show consultant_master" do
    get :show, id: @consultant_master
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @consultant_master
    assert_response :success
  end

  test "should update consultant_master" do
    put :update, id: @consultant_master, consultant_master: { awards_achievments: @consultant_master.awards_achievments, charge: @consultant_master.charge, conformation: @consultant_master.conformation, degree: @consultant_master.degree, expertise: @consultant_master.expertise, name: @consultant_master.name, professional_exp: @consultant_master.professional_exp, qualifications: @consultant_master.qualifications, specialities: @consultant_master.specialities, total_exp: @consultant_master.total_exp }
    assert_redirected_to consultant_master_path(assigns(:consultant_master))
  end

  test "should destroy consultant_master" do
    assert_difference('ConsultantMaster.count', -1) do
      delete :destroy, id: @consultant_master
    end

    assert_redirected_to consultant_masters_path
  end
end
