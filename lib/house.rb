require_relative 'room'

class House
  attr_reader :price, :address, :rooms
  def initialize(price, address)
    @price = price.delete("$").to_i
    @address = address
    @rooms = []
  end
  def add_room(room)
    @room = room
    @rooms << @room
  end
  def above_market_average
    if @price > 500000
      true
    else
      false
    end
  end
  def rooms_from_category(category)
    room_category = []
    @rooms.each do |room|
      if room.category == category
      room_category << room
      end
    end
    return room_category
  end
  def area
    @total = 0
    @rooms.each do |room|
      @total += room.area
    end
    @total
  end
  def details
    @details = {}
    @details["price"] = price
    @details["address"] = address
    @details
  end
  def price_per_square_foot

    @total = 0
    @rooms.each do |room|
      @total += room.area
    end
    @price_per_square_foot = @price.to_f / @total.to_f
    @price_per_square_foot.to_f.round(2)
  end
end
