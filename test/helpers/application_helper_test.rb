require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal full_title,         "Open Class Knowledge Base on Rails"
    assert_equal full_title("Dashboard"), "Dashboard | Open Class Knowledge Base on Rails"
  end
end