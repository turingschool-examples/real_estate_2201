
class House
  attr_reader :price, :address, :rooms, :price_i

  def initialize(price, address)
    @price = price
    @price_i = price.gsub(/\D/,'').to_i
    @address = address
    @rooms = []
  end

  def add_room(room)
    @rooms << room
  end

  def above_market_average?
    if @price_i > 500000
      true
    else
      false
    end
  end

  def rooms_from_category(type)
    type = type
    list_of_rooms = []
    @rooms.each do |room|
      # binding.pry
      if room.category == type
        list_of_rooms << room
      end
    end
    list_of_rooms
    # binding.pry
  end

  def house_area
    house_area = 0
    @rooms.each do |room|
      house_area += room.area
    end
    house_area
  end

  def details
    price = @price.to_i
    details = {"price" => price_i, "address" => @address}
  end

end
