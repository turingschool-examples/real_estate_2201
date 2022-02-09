require './lib/room'

class House
  attr_reader :price, :address, :rooms

  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
  end

  def add_room(room)
    @rooms.push(room)
  end

  def price_to_int
    @price.slice!(0)
    @price.to_i
  end

  def above_market_average?
    if price_to_int > 500000
      true
    else
      false
    end
  end

  def rooms_from_category(category)
    @rooms.select {|room| room.category == category}
  end

  def area
    area = 0
    @rooms.each do |room|
      area += room.area
    end
    area
  end

  def details
    @info = {}
    @info["price"] = price_to_int
    @info["address"] = @address
    @info
  end

  def price_per_square_foot
    (price_to_int / area.to_f).round(2)
  end

  def rooms_by_category
    room_categories = {}
    @rooms.map do |room|
      if room_categories.keys.include?(room.category) == false
        room_categories[room.category] = []
        room_categories[room.category].push(room)
      else
        room_categories[room.category].push(room)
      end
    end
    room_categories
  end

  def rooms_sorted_by_area
    @rooms.sort {|room_a, room_b| room_a.area <=> room_b.area}
  end





end
