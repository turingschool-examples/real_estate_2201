require_relative "room"

class House

  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
  end

  def price
    price = @price.delete('^0-9')
    return price.to_i
  end

  def address
    @address
  end

  def rooms
    @rooms
  end

  def add_room(room)
    @rooms << room
  end

  def above_market_average?
    if price > 500000
      return true
    else
      return false
    end
  end

  def rooms_from_category(category)
    rooms_of_category = []
    @rooms.each do |index|
      if index.category == category
        rooms_of_category << index
      end
    end
    return rooms_of_category
  end

  def area
    total_area = 0
    @rooms.each do |index|
      total_area += index.area
    end
    return total_area
  end

  def details
    details = {
      "price" => price,
      "address" => address,
    }
  end

end
