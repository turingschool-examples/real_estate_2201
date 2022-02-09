require "./room"

class House
attr_reader :price, :address, :rooms

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
    @rooms.each do |cat|
      if gory == cat.category
        @organize << cat
      else
      end
    end
    return @organize
    @organize = []
  end

end
