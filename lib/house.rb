class House

  attr_reader :price, :address, :rooms, :above_market_average

  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
    @above_market_average = false
  end

  def price
    @price.delete("$").to_i
  end


  def add_room(rooms)
    @rooms << rooms
  end

  def above_market_average? #(has to false, less than 500000)
    @price.delete("$").to_i > 500000
  end

  def rooms_from_category(category)
    rooms = []
    @rooms.each do |room|
      if room.category == category
        rooms << room
      end
    end
    rooms
  end

  def area

  end 



end
