require 'test_helper'

class ProductProfileTest < ActiveSupport::TestCase

  bayshore = Mall.create(name: "Bayshore Shopping Center")
  old_navy = Store.create(mall: bayshore, name: "Old Navy")
  on_tshirt = Product.create(store: old_navy, stock: 200)

  test 'profile validity' do
    profile = ProductProfile.create(product: on_tshirt, name: "Winter Turtleneck")
    assert profile.save
  end

  test 'name presence' do
    profile = ProductProfile.create(product: on_tshirt)
    assert_not profile.save
  end

  test 'product presence' do
    profile = ProductProfile.create(name: "Winter Turtleneck")
    assert_not profile.save
  end

end
