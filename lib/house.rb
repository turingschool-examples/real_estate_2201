require_relative "room"

class House

  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
  end

  def price
    price = @price.delete('^0-9')
    return price.to_i
  end

  def address
    @address
  end

  def rooms
    @rooms
  end

  def add_room(room)
    @rooms << room
  end

  def above_market_average?
    if price > 500000
      return true
    else
      return false
    end
  end

end
