require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test 'user validity' do
    user = User.create(username: 'elizabeth', password: 'harmonica', email: "beep@boop.com")
    assert user.save
  end

  test 'email presence' do
    user = User.create(username: 'elizabeth', password: 'harmonica')
    assert_not user.save
  end

  test 'email regex' do
      user = User.create(username: 'elizabeth', password: 'harmonica', email: "beepboop.com")
      assert_not user.save
  end

  test 'password presence' do
    user = User.create(username: 'elizabeth', email: "beep@boop.com")
    assert_not user.save
  end

  test 'password length' do
    user = User.create(username: 'elizabeth', password: ':)', email: "beep@boop.com")
    assert_not user.save
  end

  test 'username presence' do
    user = User.create(password: 'harmonica', email: "beep@boop.com")
    assert_not user.save
  end

  test 'username uniqueness' do
    user1 = User.create(username: "tobias", password: 'harmonica', email: "beep@boop.com")
    user2 = User.create(username: "tobias", password: 'yeet', email: "ham@sandwich.com")
    assert_not user2.save
  end




end
