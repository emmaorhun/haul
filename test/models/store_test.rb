require 'test_helper'

class StoreTest < ActiveSupport::TestCase

  bayshore = Mall.create(name: "Bayshore Shopping Center")

  test 'store validity' do
    store = Store.create(mall: bayshore, name: "Old Navy")
    assert store.save
  end

  test 'mall presence' do
    store = Store.create(name: "Old Navy")
    assert_not store.save
  end

  test 'name presence' do
    store = Store.create(mall: bayshore)
    assert_not store.save
  end

end
