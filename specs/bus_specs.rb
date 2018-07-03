require 'minitest/autorun'
require 'minitest/rg'
require_relative '../bus'

class TestBus < MiniTest::Test

  def setup
    @twenty_three = Bus.new(23, "Balareno")
    @passenger_1 = Person.new("Peter", 91)
  end

  def test_drive
    assert_equal("Brum brum",@twenty_three.drive())
  end
  def test_how_many_passengers
    assert_equal(0,@twenty_three.how_many_passengers)
  end

  def test_pick_up
    @twenty_three.pick_up(@passenger_1)
    assert_equal(1, @twenty_three.how_many_passengers)
  end

  def test_drop_off
    @twenty_three.pick_up(@passenger_1)
    @twenty_three.drop_off(@passenger_1)
    assert_equal(0, @twenty_three.how_many_passengers)
  end

  def test_empty_bus
    @twenty_three.empty_bus()
    assert_equal(0, @twenty_three.how_many_passengers)
  end
end
