

class Rental
  def rented?(rentable, start_date, end_date)
    puts "This #{rentable.class} " +
        "is not claimed\n" +
        " between #{start_date} and #{end_date}"
    false
  end
end

class TieFighter
  attr_reader :rent, :color, :hexagon_size

  # Give it it's claim from the get go
  def initialize(args={})
    @rental = args[:rental] || Rental.new
    # ...
  end

  def rentable?(start_date, end_date)
    !rented?(start_date - maintenance_days, end_date)
  end

  def rented?(start_date, end_date)
    rental.rented?(self, start_date, end_date)
  end

  def maintenance_days
    1
  end

  # ...
end

require 'date'
starting = Date.parse("02/04/2017")
ending = Date.parse("02/09/2017")

t = TieFighter.new
t.rentable?(starting, ending)
