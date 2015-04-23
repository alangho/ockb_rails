require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase

def setup
  @base_title = "Open Class Knowledge Base on Rails"
end

  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "#{@base_title}"
  end

  test "should get dashboard" do
    get :dashboard
    assert_redirected_to login_path
  end

  test "should get categories" do
    get :categories
    assert_redirected_to login_path
  end

end
