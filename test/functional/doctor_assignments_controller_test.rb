require 'test_helper'

class DoctorAssignmentsControllerTest < ActionController::TestCase
  setup do
    @doctor_assignment = doctor_assignments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:doctor_assignments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create doctor_assignment" do
    assert_difference('DoctorAssignment.count') do
      post :create, doctor_assignment: { clinic_charge: @doctor_assignment.clinic_charge, doctor_charge: @doctor_assignment.doctor_charge, doctor_id: @doctor_assignment.doctor_id, doctor_name: @doctor_assignment.doctor_name }
    end

    assert_redirected_to doctor_assignment_path(assigns(:doctor_assignment))
  end

  test "should show doctor_assignment" do
    get :show, id: @doctor_assignment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @doctor_assignment
    assert_response :success
  end

  test "should update doctor_assignment" do
    put :update, id: @doctor_assignment, doctor_assignment: { clinic_charge: @doctor_assignment.clinic_charge, doctor_charge: @doctor_assignment.doctor_charge, doctor_id: @doctor_assignment.doctor_id, doctor_name: @doctor_assignment.doctor_name }
    assert_redirected_to doctor_assignment_path(assigns(:doctor_assignment))
  end

  test "should destroy doctor_assignment" do
    assert_difference('DoctorAssignment.count', -1) do
      delete :destroy, id: @doctor_assignment
    end

    assert_redirected_to doctor_assignments_path
  end
end
