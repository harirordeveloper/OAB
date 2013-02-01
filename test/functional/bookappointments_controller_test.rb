require 'test_helper'

class BookappointmentsControllerTest < ActionController::TestCase
  setup do
    @bookappointment = bookappointments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bookappointments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bookappointment" do
    assert_difference('Bookappointment.count') do
      post :create, bookappointment: { address: @bookappointment.address, age: @bookappointment.age, email: @bookappointment.email, gender: @bookappointment.gender, name: @bookappointment.name, phonenum: @bookappointment.phonenum }
    end

    assert_redirected_to bookappointment_path(assigns(:bookappointment))
  end

  test "should show bookappointment" do
    get :show, id: @bookappointment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bookappointment
    assert_response :success
  end

  test "should update bookappointment" do
    put :update, id: @bookappointment, bookappointment: { address: @bookappointment.address, age: @bookappointment.age, email: @bookappointment.email, gender: @bookappointment.gender, name: @bookappointment.name, phonenum: @bookappointment.phonenum }
    assert_redirected_to bookappointment_path(assigns(:bookappointment))
  end

  test "should destroy bookappointment" do
    assert_difference('Bookappointment.count', -1) do
      delete :destroy, id: @bookappointment
    end

    assert_redirected_to bookappointments_path
  end
end
