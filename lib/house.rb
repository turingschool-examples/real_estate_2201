class House
  attr_reader :price, :address, :rooms

  def initialize(price, address, rooms = [])
    @price = price
    @address = address
    @rooms = rooms
  end

  def add_room(room)
    rooms << room
  end

  def above_market_average?
    @price[1..-1].to_i > 500000
  end

  def area
    total_area = 0
    rooms.each do |room|
      total_area += room.area
    end
    total_area
  end
end
