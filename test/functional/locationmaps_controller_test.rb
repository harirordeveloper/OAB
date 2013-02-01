require 'test_helper'

class LocationmapsControllerTest < ActionController::TestCase
  setup do
    @locationmap = locationmaps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:locationmaps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create locationmap" do
    assert_difference('Locationmap.count') do
      post :create, locationmap: { address: @locationmap.address, gmaps: @locationmap.gmaps, latitude: @locationmap.latitude, longitude: @locationmap.longitude, name: @locationmap.name }
    end

    assert_redirected_to locationmap_path(assigns(:locationmap))
  end

  test "should show locationmap" do
    get :show, id: @locationmap
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @locationmap
    assert_response :success
  end

  test "should update locationmap" do
    put :update, id: @locationmap, locationmap: { address: @locationmap.address, gmaps: @locationmap.gmaps, latitude: @locationmap.latitude, longitude: @locationmap.longitude, name: @locationmap.name }
    assert_redirected_to locationmap_path(assigns(:locationmap))
  end

  test "should destroy locationmap" do
    assert_difference('Locationmap.count', -1) do
      delete :destroy, id: @locationmap
    end

    assert_redirected_to locationmaps_path
  end
end
