require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "fails saving if the user does not have an email" do
    user = User.new password: '123456'
    assert_equal user.valid?, false
  end
  
  test "fails saving if the user does not have a password" do
    user = User.new email: 'jack@sparrow.com'
    assert_equal user.valid?, false
  end
  
  test "saves if the user has an email and a valid password" do
    user = User.new email: 'jack@sparrow.com', password: '123456'
    assert_equal user.valid?, true
  end

  test "fails saving if the user has an email and an invalid password" do
    user = User.new email: 'jack@sparrow.com', password: ''
    assert_equal user.valid?, false
  end

  test "#full_name returns the correct name" do
    user = User.new(
      email: 'jack@sparrow.com',
      password: '123456',
      first_name: 'jack',
      last_name: 'sparrow'
    )

    assert user.full_name, 'Jack Sparrow'

  end

end
