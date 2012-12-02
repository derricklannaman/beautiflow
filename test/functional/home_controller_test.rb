require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get pricing" do
    get :pricing
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get dashboard" do
    get :dashboard
    assert_response :success
  end

end
