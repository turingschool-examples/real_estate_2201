require 'pry'
require './room'

class House
  attr_reader :price, :address, :rooms
  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
  end

  def add_room(room)
    @rooms << room
  end

  def above_market_average?
    value = price.to_i
    if value >= 500000
      return true
    else
      false
    end
  end

  def rooms_from_category(category)
    room_category = []
    @rooms.each do |room|
      if room.category == category
        room_category << room
      end
    end
    return room_category
  end

  # def calculate_total_square_footage
  #   # square_footage = []
  #   # @rooms.each do |room|
  #   # square_footage << room.area
  #   @rooms.map {|room| room.area}.sum
  #   # total_square_footage = square_footage.sum
  #   # return total_square_footage
  # end
  #
  # def price_to_float
  #   price_to_float = @price.to_f
  #   return price_to_float
  # end
  #
  # def price_per_square_foot
  #   price_by_square_foot = (price_to_float)/(calculate_total_square_footage)
  #   return price_by_square_foot.round(2)
  # end
  #could probably have gotten this done in one method?

  def price_per_square_foot
    total_square_footage = @rooms.map {|room| room.area}.sum
    price_to_float = @price.to_f
    price_by_square_foot = (price_to_float)/(total_square_footage)
    return price_by_square_foot.round(2)
  end

  def rooms_sorted_by_area
    room_rank = @rooms.map.sort_by {|room| room.area}
    return room_rank.reverse
  end

#Of note here is that Ruby chooses to sort_by(value) an array by starting with the smallest value first. The interaction pattern was not entirely specific as to how the rooms were to be sorted, ie. biggest => smallest, or vice versa. The .reverse at the end of my method puts them in biggest => smallest order.

  def rooms_by_category
    @rooms.select {|room| room.category}
  end
end
#To be honest I'm not entirely sure how this works. It did give me the result I was looking for from the interaction pattern, namely an array with the bedrooms first, then living room, then basement. But why it gave me that order and not bedrooms, basement, living room, or the reverse, I'm not sure.
