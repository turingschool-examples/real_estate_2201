require 'pry'
require './lib/room'

class House
  attr_reader :price, :address, :details
  attr_accessor :rooms

  def initialize(price, address)
    @price = price.delete_prefix('$').to_i
    @address = address
    @rooms = []
    @details = {"price" => @price, "address" => address}
  end

  def add_room(room)
    @rooms << room
  end

  def above_market_average?
    if @price > 500000
      return true
    else
      return false
    end
  end

  def rooms_from_category(category)
    selected_rooms = []
    @rooms.each do |room|
      selected_rooms << room if room.category == category
    end
    return selected_rooms
  end

  def area
    area = 0
    @rooms.each do |room|
      area += room.area
    end
    return area
  end

  def price_per_square_foot
    return (price.to_f / area.to_f).round(2)
  end
end

# binding.pry
