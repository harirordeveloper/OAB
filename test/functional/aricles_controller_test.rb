require 'test_helper'

class AriclesControllerTest < ActionController::TestCase
  setup do
    @aricle = aricles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aricles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aricle" do
    assert_difference('Aricle.count') do
      post :create, aricle: { comment: @aricle.comment, name: @aricle.name }
    end

    assert_redirected_to aricle_path(assigns(:aricle))
  end

  test "should show aricle" do
    get :show, id: @aricle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aricle
    assert_response :success
  end

  test "should update aricle" do
    put :update, id: @aricle, aricle: { comment: @aricle.comment, name: @aricle.name }
    assert_redirected_to aricle_path(assigns(:aricle))
  end

  test "should destroy aricle" do
    assert_difference('Aricle.count', -1) do
      delete :destroy, id: @aricle
    end

    assert_redirected_to aricles_path
  end
end
