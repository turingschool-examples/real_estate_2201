class House
  attr_reader :price, :address, :rooms

  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
  end

  def price
    @price.delete_prefix("$").to_i
  end

  def add_room(room)
    @rooms << room
  end

  def above_market_average?
    if price > 500000
      true
    else
      false
    end
  end

  def rooms_from_category(category)
    total_rooms = []

    @rooms.each do |room|
      if room.category == category
        total_rooms << room
      end
    end

    total_rooms
  end

  def area
    total_area = 0

    @rooms.each do |room|
      total_area += room.area
    end

    total_area
  end

  def details
    details = Hash.new

    details["price"] = price
    details["address"] = @address

    details
  end

  def price_per_square_foot
    (price.to_f / area).round(2)
  end

  def rooms_sorted_by_area
    @rooms.sort_by { |room| room.area }.reverse
  end

  def rooms_by_category
    rooms_by_category = Hash.new

    @rooms.each do |room|
      if room.category == :bedroom && rooms_by_category.has_key?(:bedroom)
        rooms_by_category.values_at(:bedroom) << room
      else
      rooms_by_category[room.category] = [room]
      end
    end

    rooms_by_category
  end
end
