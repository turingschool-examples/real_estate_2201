require 'pry'
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

  def rooms_from_category (get_category)
    output = []
    @rooms.each do |current_room|
      if current_room.category == get_category
        output << current_room
      end
    end
    output
  end

  def area
    area = 0
    @rooms.each do |current_room|
      area += current_room.area
    end
    area
  end

  def details
    details = {}
    details["price"] = @price
    details["address"] = @address
    return details
  end

  def price_per_square_foot
    (@price.to_f / area.to_f).round(2)
  end

  def rooms_sorted_by_area
    to_sort = @rooms
    sorted = []
    while to_sort != [] do
      index = 0
      greatest_area = 0
      greatest_index =0
      to_sort.each do |room|
        if room.area > greatest_area
          greatest_area = room.area
          greatest_index = index
        end
        index += 1
        # binding.pry
      end
      # binding.pry
      sorted << to_sort[greatest_index]
      to_sort.delete_at(greatest_index)
    end
    return sorted
  end
end
