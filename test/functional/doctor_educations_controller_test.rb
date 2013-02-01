require 'test_helper'

class DoctorEducationsControllerTest < ActionController::TestCase
  setup do
    @doctor_education = doctor_educations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:doctor_educations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create doctor_education" do
    assert_difference('DoctorEducation.count') do
      post :create, doctor_education: { address: @doctor_education.address, college: @doctor_education.college, degree: @doctor_education.degree, year_of_pass: @doctor_education.year_of_pass }
    end

    assert_redirected_to doctor_education_path(assigns(:doctor_education))
  end

  test "should show doctor_education" do
    get :show, id: @doctor_education
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @doctor_education
    assert_response :success
  end

  test "should update doctor_education" do
    put :update, id: @doctor_education, doctor_education: { address: @doctor_education.address, college: @doctor_education.college, degree: @doctor_education.degree, year_of_pass: @doctor_education.year_of_pass }
    assert_redirected_to doctor_education_path(assigns(:doctor_education))
  end

  test "should destroy doctor_education" do
    assert_difference('DoctorEducation.count', -1) do
      delete :destroy, id: @doctor_education
    end

    assert_redirected_to doctor_educations_path
  end
end
