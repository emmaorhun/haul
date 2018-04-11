require 'test_helper'

class MallTest < ActiveSupport::TestCase

  test 'mall validity' do
    mall = Mall.create(name: "Bayshore Shopping Center")
    assert mall.save
  end

  test 'name presence' do
    mall = Mall.create()
    assert_not mall.save
  end

end
