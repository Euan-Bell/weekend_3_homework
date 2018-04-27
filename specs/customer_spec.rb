require('minitest/autorun')
require('minitest/rg')
require('pry')

require_relative('../models/customer.rb')
require_relative('../models/film.rb')


class TestCustomer < MiniTest::Test

  def setup
    @customer1 = Customer.new({'name' => 'Paul',
      'funds' => 20})
    @film1 = Film.new({'title' => 'IT','price' => 10})
  end

  def test_get_funds
    assert_equal(20,@customer1.funds)
  end

  def test_get_price
    assert_equal(10,@film1.price)
  end

  def test_subtract_price_from_funds
  @customer1.subtract_price_from_funds(@film1)
  assert_equal(10,@customer1.funds)
  end


end
