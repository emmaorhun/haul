require 'test_helper'

class ProductTest < ActiveSupport::TestCase

  bayshore = Mall.create(name: "Bayshore Shopping Center")
  old_navy = Store.create(mall: bayshore, name: "Old Navy")

  test 'product validity' do
    product = Product.create(store: old_navy, stock: 200)
    assert product.save
  end

  test 'store presence' do
    product = Product.create(stock: 200)
    assert_not product.save
  end

  test 'stock presence' do
    product = Product.create(store: old_navy)
    assert_not product.save
  end

end
