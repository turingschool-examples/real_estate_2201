class House
  attr_reader :rooms, :house
  def initialize(price,address)
    @price = price
    @address = address
    @rooms = []
  end

  def add_room(room)
    @rooms << room
  end

  def above_market_average?
    cost = @price[1..-1]
    if cost.to_i > 499999
      return true
    else
      return false
    end
  end

  def rooms_from_category(selected_category)
    rooms_from_category_array = []
    rooms.each do |room|
      if selected_category == room.category
        rooms_from_category_array.push(room)
      end
    end
    return rooms_from_category_array
  end

  def area
    house_area = 0
    rooms.each do |room|
      house_area = house_area + room.length * room.width.to_i
    end
    return house_area
  end

  def details
    return {"price" => @price[1..-1].to_i, "address" => @address}
  end

  def price_per_square_foot
    price_per_square_foot_unrounded = @price[1..-1].to_f / area.to_f
    return price_per_square_foot_unrounded.round(2)
  end

  def rooms_sorted_by_area
    rooms_sorted_by_area_array = []
    rooms_sorted_by_area_array.push(rooms[0])
    room_index = 0
    rooms.each do |room|
      if room.area > rooms[room_index].area
        rooms_from_category_array.push(room)
      end
    end
    return rooms_from_category_array
  end
end
