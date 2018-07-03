require_relative "person"
require_relative 'busstop'

class Bus
  # attr_writer :passengers

  def initialize (arg1, arg2)
    @route_number = arg1
    @destination = arg2
    @passengers = []
  end

  def drive()
    return "Brum brum"
  end
  def how_many_passengers
    @passengers.length
  end

  def pick_up(person)
    @passengers.push(person)
  end

  def drop_off(person)
    @passengers.delete(person)
  end

  def empty_bus()
    while @passengers.length > 0
      @passangers.pop()
    end
  end


end
