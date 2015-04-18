require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest

  test "layout links" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", dashboard_path
    assert_select "a[href=?]", categories_path
    assert_select "a[href=?]", signup_path
    get signup_path
    assert_select "title", full_title("Sign Up")
  end
end