class House
  attr_reader :address, :price, :rooms
  def initialize (price, address)
    @address = address
    @price = price.slice(1, price.length-1).to_i
    @rooms = []
  end

  def add_room (room_to_add)
    @rooms << room_to_add
  end

  def above_market_average?
    @price > 500000
  end
end
