require "./room"
require "pry"

class House
attr_reader :price, :address, :rooms, :organize

  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
    @organize = []
  end

  def add_room(room)
    @rooms << room
  end

  def above_market_average
    if price.to_i > 500000
      true
    else price.to_i <= 500000
      false
    end
  end

  def rooms_from_category(gory)
    until @organize == [] do
      @organize.shift
    end
    @rooms.each do |cat|
      if gory == cat.category
        @organize << cat
      else
      end
    end
    return @organize
  end

end
