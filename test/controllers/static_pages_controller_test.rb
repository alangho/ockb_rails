require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Home | Open Class Knowledge Base on Rails"
  end

  test "should get dashboard" do
    get :dashboard
    assert_response :success
    assert_select "title", "Dashboard | Open Class Knowledge Base on Rails"
  end

  test "should get categories" do
    get :categories
    assert_response :success
    assert_select "title", "Categories | Open Class Knowledge Base on Rails"
  end

end
