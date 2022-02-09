require 'pry'
class House

  attr_reader :price, :address
  def initialize(price, address)

    @price = price
#    @value_for_price_int = price
    @address = address
    @rooms = []

  end

  def rooms
    return @rooms
  end

  def add_room(room)
    @rooms << room
  end

  def above_market_average?
    price_as_int = @price
    if price_as_int.slice!(0).to_i > 500000
      return true
    else
      return false
    end
  end

  def rooms_from_category(category)
    return_array = []
    @rooms.each do |room|
      if room.category == category
        return_array.push(room)
      end
    end
    return return_array
  end

  def area
    total_area = 0
    @rooms.each do |room|
      total_area += room.area
    end
    return total_area
  end

  def details
    return [@price,@address]
  end

=begin
  def price_per_square_foot
    house_area = area
    price_as_int = @value_for_price_int.shift()
    p price_as_int
    p house_area
#    p price_as_int.slice!(0).to_i
#    price_per_sf = house_area / price_as_int.slice!(0).to_i
#    return price_per_sf
  end
=end  

end
