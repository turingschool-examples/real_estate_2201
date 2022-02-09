class House
  attr_reader :price, :address, :rooms

  def initialize(price_string, address, rooms = [])
    @price_string = price_string
    @address = address
    @rooms = rooms
  end

  def price
    @price_string.tr('$', '').to_i
  end

  def add_room(room)
    @rooms << room
  end

  def above_market_average?
    if @price_string.tr('$', '').to_i > 500000
      true
    else
      false
    end
  end

  def rooms_from_category(type)
    category_rooms = []
    @rooms.each do |room|
      if room.category == type
        category_rooms << room
      end
    end
    category_rooms
  end

  def area
    house_area = 0
    @rooms.each do |room|
      house_area += room.length * room.width.to_i
    end
    house_area
  end

  def details
    house_price = @price_string.tr('$', '').to_i
    details_hash = {
      "price" => house_price,
      "address" => @address
    }
  end

  def price_per_square_foot
    house_price = (@price_string.tr('$', '').to_i).to_f
    house_area = 0
    @rooms.each do |room|
      house_area += (room.length * room.width.to_i).to_f
    end
    (house_price / house_area).round(2)
  end

  def rooms_sorted_by_area
    room_areas = []
    rooms_sorted = []
    @rooms.each do |room|
      room_areas << room.length * room.width.to_i
      # room_areas.sort!
    end
    room_areas.sort!.reverse!
    room_areas.each do |room_area|
      @rooms.each do |room|
        if (room.length * room.width.to_i) == room_area
          rooms_sorted << room
        else
        end
      end
    end
    rooms_sorted
  end

  def rooms_by_category
    rooms_category_hash = {}
    bedroom_array = []
    living_room_array = []
    basement_array = []
    @rooms.each do |room|
      if room.category == :bedroom
        bedroom_array << room
      elsif room.category == :living_room
        living_room_array << room
      elsif room.category == :basement
        basement_array << room
      end
    end
    rooms_category_hash[:bedroom] = bedroom_array
    rooms_category_hash[:living_room] = living_room_array
    rooms_category_hash[:basement] = basement_array
    rooms_category_hash
  end #rooms_by_category method end

end #House class end
