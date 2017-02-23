# This is allowing the act of renting an
# object for all types of objects.

module Rentable
  attr_writer :rental

  def rental
    @rental ||= ::Rental.new
  end

  def rentable?(start_date, end_date)
    !rented?(start_date - maintenance_days)
  end

  def rented?(start_date, end_date)
    rental.rented?(self, start_date, end_date)
  end

  # default
  def maintenance_days
    0
  end
end

class TieFighter
  include Rentable

  def maintenance_days
    3
  end
end

class AtAtWalker
  include Rentable

  def maintenance_days
    10
  end
end

class MouseDroid
  include Rentable

  # ...
end

# both of these now can use Rentable's methods
t = TieFighter.new
t.rentable?(starting, ending)

atat = AtAtWalker.new
atat.rentable?(starting, ending)

# MouseDroid defaults to zero maintenance days
m = MouseDroid.new
m.rentable?(starting, ending)
