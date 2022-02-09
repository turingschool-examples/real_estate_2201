require 'rspec'
require './lib/room'

class House
attr_reader :price, :address, :rooms

  def initialize(price, address)
    @price = price.delete("$").to_i
    @address = address
    @rooms = []
  end

  def add_room(room_number)
    @rooms << room_number
  end

  def above_market_average?
    if @price > 500000
      true
    else
      false
    end
  end

  def rooms_from_category(room_category)
    room_type = []

    @rooms.each do |room|
      if room.category == room_category
        room_type << room
      end
    end
    room_type

  end

end
