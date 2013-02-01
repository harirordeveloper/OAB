require 'test_helper'

class DoctorFlowsControllerTest < ActionController::TestCase
  setup do
    @doctor_flow = doctor_flows(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:doctor_flows)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create doctor_flow" do
    assert_difference('DoctorFlow.count') do
      post :create, doctor_flow: { city: @doctor_flow.city, location: @doctor_flow.location, name: @doctor_flow.name, speciality: @doctor_flow.speciality }
    end

    assert_redirected_to doctor_flow_path(assigns(:doctor_flow))
  end

  test "should show doctor_flow" do
    get :show, id: @doctor_flow
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @doctor_flow
    assert_response :success
  end

  test "should update doctor_flow" do
    put :update, id: @doctor_flow, doctor_flow: { city: @doctor_flow.city, location: @doctor_flow.location, name: @doctor_flow.name, speciality: @doctor_flow.speciality }
    assert_redirected_to doctor_flow_path(assigns(:doctor_flow))
  end

  test "should destroy doctor_flow" do
    assert_difference('DoctorFlow.count', -1) do
      delete :destroy, id: @doctor_flow
    end

    assert_redirected_to doctor_flows_path
  end
end
