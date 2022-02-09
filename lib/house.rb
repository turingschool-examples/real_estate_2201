require 'pry'
require './lib/room'

class House
  attr_reader :price, :address
  attr_accessor :rooms

  def initialize(price, address)
    @price = price.delete_prefix('$').to_i
    @address = address
    @rooms = []
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
end

# binding.pry
