require './lib/room'

class House

  attr_reader :price,
              :address,
              :rooms,
              :details

  def initialize(price, address)
    @price = price[1..-1].to_i
    @address = address
    @rooms = []
    @details = {
      "price" => @price,
      "address" => @address
    }
  end

  def add_room(room)
    @rooms << room
  end

  def above_market_average?
    if @price > 500000
      true
    else
      false
    end
  end

  def rooms_from_category(category)
    @rooms.find_all do |room|
      room.category == category
    end
  end

  def area
    area = 0
    @rooms.each do |room|
      area += room.area
    end
    return area
  end

end
