require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: "Bob", email: "bob@example.com")
  end

  test "valid login" do
    assert @user.valid?
  end

  test "should have name" do
    @user.name = ""
    assert_not @user.valid?
  end

  test "should have email" do
    @user.email = ""
    assert_not @user.valid?
  end
end
