require 'test_helper'

class SpecialitiesControllerTest < ActionController::TestCase
  setup do
    @speciality = specialities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:specialities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create speciality" do
    assert_difference('Speciality.count') do
      post :create, speciality: { Gastroenterology: @speciality.Gastroenterology, Hematology: @speciality.Hematology, JointReplacement: @speciality.JointReplacement, Neurosurgery: @speciality.Neurosurgery, Oncology: @speciality.Oncology, Orthopaedics: @speciality.Orthopaedics, branchname: @speciality.branchname, cardiology: @speciality.cardiology, cardiothoracicsurgery: @speciality.cardiothoracicsurgery, clinicname: @speciality.clinicname, neurology: @speciality.neurology }
    end

    assert_redirected_to speciality_path(assigns(:speciality))
  end

  test "should show speciality" do
    get :show, id: @speciality
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @speciality
    assert_response :success
  end

  test "should update speciality" do
    put :update, id: @speciality, speciality: { Gastroenterology: @speciality.Gastroenterology, Hematology: @speciality.Hematology, JointReplacement: @speciality.JointReplacement, Neurosurgery: @speciality.Neurosurgery, Oncology: @speciality.Oncology, Orthopaedics: @speciality.Orthopaedics, branchname: @speciality.branchname, cardiology: @speciality.cardiology, cardiothoracicsurgery: @speciality.cardiothoracicsurgery, clinicname: @speciality.clinicname, neurology: @speciality.neurology }
    assert_redirected_to speciality_path(assigns(:speciality))
  end

  test "should destroy speciality" do
    assert_difference('Speciality.count', -1) do
      delete :destroy, id: @speciality
    end

    assert_redirected_to specialities_path
  end
end
