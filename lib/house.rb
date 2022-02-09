class House
  attr_reader :price, :address, :rooms

  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
  end

  def price
    @price.delete_prefix("$").to_i
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
    total_rooms = []

    @rooms.each do |room|
      if room.category == category
        total_rooms << room
      end
    end

    total_rooms
  end

  def area
    total_area = 0

    @rooms.each do |room|
      total_area += room.area
    end

    total_area
  end
end
