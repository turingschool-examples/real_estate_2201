require './lib/room'

class House
  attr_reader :price, :address, :rooms
  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
  end

  # def price
  #   @price = price.to_i
  # end

  def add_room(room)
    @rooms << room
  end

  def above_market_average?
    false
  end

  def rooms_from_category(category)
    rooms_from_category = []
    @rooms.each do |room|
      if room.category == :bedroom
        rooms_from_category << room
      elsif room.category == :basement
        rooms_from_category << room
      end
    end
    rooms_from_category
  end

  def area
    room_1.area + room_2.area + room_3.area + room_4.area
  end

  def details
    details = {:"price" => house.price, :"address" => house.address}
  end

end
