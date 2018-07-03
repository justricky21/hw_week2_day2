require 'minitest/autorun'
require 'minitest/rg'
require_relative '../busstop'

class TestBusStop < MiniTest::Test

  def setup
    @twenty_three = Bus.new(23, "Balareno")
    @stop_1 = BusStop.new("Haymarket")
    @passenger_1 = Person.new("Peter", 91)
    @passenger_2 = Person.new("Matt", 2)
    @passenger_3 = Person.new("Mish", 32)
  end

  def test_add_to_queue
    @stop_1.add_to_queue(@passenger_1)
    assert_equal(1,@stop_1.queue.length)
  end

  def test_all_aboard
    @twenty_three.pick_up(@passenger_3)
    @stop_1.add_to_queue(@passenger_1)
    @stop_1.add_to_queue(@passenger_2)
    @stop_1.all_aboard(@twenty_three)
    assert_equal(0,@stop_1.queue.length)
    assert_equal(3,@twenty_three.how_many_passengers)
  end

end
