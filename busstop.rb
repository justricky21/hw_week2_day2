require_relative 'bus'

class BusStop
  attr_reader :queue
  def initialize(arg1)
    @name = arg1
    @queue = []
  end

  def add_to_queue(person)
    @queue.push(person)
  end

  def all_aboard(bus)
    bus.passengers = @queue
    @queue = []
  end


end
