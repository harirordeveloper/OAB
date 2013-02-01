require 'test_helper'

class CityControllerTest < ActionController::TestCase
  test "should get search" do
    get :search
    assert_response :success
  end

end
