require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test 'vemail regex' do
      user = User.create(username: 'elizabeth', password: 'harmonica', email: "beepboop.com")
      assert_not user.valid?
  end

  test 'password length' do
    user = User.create(username: 'elizabeth', password: ':)', email: "beep@boop.com")
    assert_not user.valid?
  end

  test 'password presence' do
    user = User.create(username: 'elizabeth', password: '', email: "beep@boop.com")
    assert_not user.valid?
  end




end
