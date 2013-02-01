require 'test_helper'

class ClinicFlowsControllerTest < ActionController::TestCase
  setup do
    @clinic_flow = clinic_flows(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clinic_flows)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clinic_flow" do
    assert_difference('ClinicFlow.count') do
      post :create, clinic_flow: { city: @clinic_flow.city, location: @clinic_flow.location, name: @clinic_flow.name, speciality: @clinic_flow.speciality }
    end

    assert_redirected_to clinic_flow_path(assigns(:clinic_flow))
  end

  test "should show clinic_flow" do
    get :show, id: @clinic_flow
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clinic_flow
    assert_response :success
  end

  test "should update clinic_flow" do
    put :update, id: @clinic_flow, clinic_flow: { city: @clinic_flow.city, location: @clinic_flow.location, name: @clinic_flow.name, speciality: @clinic_flow.speciality }
    assert_redirected_to clinic_flow_path(assigns(:clinic_flow))
  end

  test "should destroy clinic_flow" do
    assert_difference('ClinicFlow.count', -1) do
      delete :destroy, id: @clinic_flow
    end

    assert_redirected_to clinic_flows_path
  end
end
