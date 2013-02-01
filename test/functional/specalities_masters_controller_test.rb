require 'test_helper'

class SpecalitiesMastersControllerTest < ActionController::TestCase
  setup do
    @specalities_master = specalities_masters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:specalities_masters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create specalities_master" do
    assert_difference('SpecalitiesMaster.count') do
      post :create, specalities_master: { name: @specalities_master.name }
    end

    assert_redirected_to specalities_master_path(assigns(:specalities_master))
  end

  test "should show specalities_master" do
    get :show, id: @specalities_master
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @specalities_master
    assert_response :success
  end

  test "should update specalities_master" do
    put :update, id: @specalities_master, specalities_master: { name: @specalities_master.name }
    assert_redirected_to specalities_master_path(assigns(:specalities_master))
  end

  test "should destroy specalities_master" do
    assert_difference('SpecalitiesMaster.count', -1) do
      delete :destroy, id: @specalities_master
    end

    assert_redirected_to specalities_masters_path
  end
end
