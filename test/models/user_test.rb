require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "User with a valid email address should be valid" do
    user = User.new(email: "test@test.com", password_digest: "123456")
    assert user.valid?
  end

  test "User with an invalid email address should not be valid" do
    user = User.new(email: "test.com", password_digest: "123456")
    assert_not user.valid?
  end

  test "User with a taken email should not be valid" do
    other_user = users(:one)
    user = User.new(email: other_user.email, password_digest: "123456")
    assert_not user.valid?
  end

  test "User with a blank password should not be valid" do
    user = User.new(email: "black@me.com", password_digest: "")
    assert_not user.valid?
  end
end
