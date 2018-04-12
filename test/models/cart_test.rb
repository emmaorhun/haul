require 'test_helper'

class CartTest < ActiveSupport::TestCase

  emma = User.create(email: "emma@orhun.com", username:"emma", password: "emma1999")

  test 'cart validity' do
    cart = Cart.create(user: emma)
    assert cart.save
  end

  test 'user presence' do
    cart = Cart.create()
    assert_not cart.save
  end

end
