require 'test_helper'

class LocationTest < ActiveSupport::TestCase

  bayshore = Mall.create(name: "Bayshore Shopping Center")

  test 'location validity' do
    location = Location.create(mall: bayshore, street_address: "100 Bayshore Dr", province: "Ontario", city: "Ottawa", postal_code: "K2H7C8")
    assert location.save
  end

  test 'mall presence' do
    location = Location.create(street_address: "100 Bayshore Dr", province: "Ontario", city: "Ottawa", postal_code: "K2H7C8")
    assert_not location.save
  end

  test 'street_address presence' do
    location = Location.create(mall: bayshore, province: "Ontario", city: "Ottawa", postal_code: "K2H7C8")
    assert_not location.save
  end

  test 'province presence' do
    location = Location.create(mall: bayshore, street_address: "100 Bayshore Dr", city: "Ottawa", postal_code: "K2H7C8")
    assert_not location.save
  end

  test 'city presence' do
    location = Location.create(mall: bayshore, street_address: "100 Bayshore Dr", province: "Ontario", postal_code: "K2H7C8")
    assert_not location.save
  end

  test 'postal_code presence' do
    location = Location.create(mall: bayshore, street_address: "100 Bayshore Dr", province: "Ontario", city: "Ottawa")
    assert_not location.save
  end

  test 'postal_code regex' do
    location = Location.create(mall: bayshore, street_address: "100 Bayshore Dr", province: "Ontario", city: "Ottawa", postal_code: "beepboop")
    assert_not location.save
  end

end
