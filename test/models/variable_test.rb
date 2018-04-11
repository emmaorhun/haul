require 'test_helper'

class VariableTest < ActiveSupport::TestCase

  bayshore = Mall.create(name: "Bayshore Shopping Center")
  old_navy = Store.create(mall: bayshore, name: "Old Navy")
  on_tshirt = Product.create(store: old_navy, stock: 200)

  test 'variable validity' do
    variable = Variable.new(store: old_navy, product: on_tshirt, type_of_variable: 'color', option: 'green')
    assert variable.save
  end

  test 'store presence' do
    variable = Variable.new(product: on_tshirt, type_of_variable: 'color', option: 'green')
    assert_not variable.save
  end


  test 'product presence' do
    variable = Variable.new(store: old_navy, option: 'green')
    assert_not variable.save
  end

  test 'type_of_variable presence' do
    variable = Variable.new(store: old_navy, product: on_tshirt, option: 'green')
    assert_not variable.save
  end

  test 'option presence' do
    variable = Variable.new(store: old_navy, product: on_tshirt, type_of_variable: 'color')
    assert_not variable.save
  end

end
