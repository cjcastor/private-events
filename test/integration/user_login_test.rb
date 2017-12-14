require 'test_helper'

class UsersLoginTest < ActionDispatch::IntegrationTest
  def setup
    @user = users(:michael)
  end

  test "invalid login" do
    get login_path
    post login_path, params: { session: { email: ""}}
    assert_not is_logged_in?
  end

  test "valid login" do
    get login_path
    post login_path, params: { session: { email: "michael@example.com"}}
    assert is_logged_in?
  end

  test "logout" do
    delete logout_path
    assert_not is_logged_in?
  end
end