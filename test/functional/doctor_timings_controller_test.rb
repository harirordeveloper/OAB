require 'test_helper'

class DoctorTimingsControllerTest < ActionController::TestCase
  setup do
    @doctor_timing = doctor_timings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:doctor_timings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create doctor_timing" do
    assert_difference('DoctorTiming.count') do
      post :create, doctor_timing: { day: @doctor_timing.day, evening_time: @doctor_timing.evening_time, morning_time: @doctor_timing.morning_time, others: @doctor_timing.others }
    end

    assert_redirected_to doctor_timing_path(assigns(:doctor_timing))
  end

  test "should show doctor_timing" do
    get :show, id: @doctor_timing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @doctor_timing
    assert_response :success
  end

  test "should update doctor_timing" do
    put :update, id: @doctor_timing, doctor_timing: { day: @doctor_timing.day, evening_time: @doctor_timing.evening_time, morning_time: @doctor_timing.morning_time, others: @doctor_timing.others }
    assert_redirected_to doctor_timing_path(assigns(:doctor_timing))
  end

  test "should destroy doctor_timing" do
    assert_difference('DoctorTiming.count', -1) do
      delete :destroy, id: @doctor_timing
    end

    assert_redirected_to doctor_timings_path
  end
end
