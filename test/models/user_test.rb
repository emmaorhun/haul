require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test 'valid user' do
      user = User.create(username: 'elizabeth', password: 'harmonica', email: "beep@boop.com")
      assert user.valid?
  end




end
