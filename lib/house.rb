class House
  attr_reader :price, :address, :rooms
  def initialize(price, address)
    @price = Monetize.parse(price).to_i
    @address = address
    @rooms = []
  end

  def add_room(room)
    @rooms << room
  end

  def above_market_average?
    if price > 500000
      true
    else
      false
    end
  end

  def rooms_from_category(category)
    rfc = []
    @rooms.each do |room|
      if room.category == category
        rfc << room
      end
    end
    rfc
  end
end
