require 'test_helper'

class ClinicTimingsControllerTest < ActionController::TestCase
  setup do
    @clinic_timing = clinic_timings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clinic_timings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clinic_timing" do
    assert_difference('ClinicTiming.count') do
      post :create, clinic_timing: { day: @clinic_timing.day, evening_time: @clinic_timing.evening_time, morning_time: @clinic_timing.morning_time, others: @clinic_timing.others }
    end

    assert_redirected_to clinic_timing_path(assigns(:clinic_timing))
  end

  test "should show clinic_timing" do
    get :show, id: @clinic_timing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clinic_timing
    assert_response :success
  end

  test "should update clinic_timing" do
    put :update, id: @clinic_timing, clinic_timing: { day: @clinic_timing.day, evening_time: @clinic_timing.evening_time, morning_time: @clinic_timing.morning_time, others: @clinic_timing.others }
    assert_redirected_to clinic_timing_path(assigns(:clinic_timing))
  end

  test "should destroy clinic_timing" do
    assert_difference('ClinicTiming.count', -1) do
      delete :destroy, id: @clinic_timing
    end

    assert_redirected_to clinic_timings_path
  end
end
