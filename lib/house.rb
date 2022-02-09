class House
  attr_reader :price, :address, :rooms

  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
  end
  
  def above_market_average?
    intable_price = price.sub('$', ' ')
    if intable_price.to_i > 500000
      return true
    else
      return false
    end
  end

  def add_room(room)
    rooms.append(room)
  end

  def rooms_from_category(category)
    sub_array = []
    rooms.each do |room|
      if room.category == category 
        sub_array.append(room)
      end
    end
    return sub_array
  end

  def area
    total = 0
    rooms.each do |room|
      total += room.area
    end
    return total
  end

  def details
    return {"price" => price, "address" => address}
  end

  def price_per_square_foot
    intable_price = price.sub("$", " ")
    float_price = intable_price.to_f / self.area.to_f
    return float_price.round(2)
  end

end