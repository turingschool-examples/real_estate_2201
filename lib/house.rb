require "./room"
require "pry"

class House
attr_reader :price, :address, :rooms, :organize_by_category, :total_area, :details

  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
    @organize_by_category = []
    @total_area = 0
    @details = {"price" => price.to_i, "address" => address}
  end

  def add_room(room)
    @rooms << room
  end

  def above_market_average
    if price.to_i > 500000
      true
    else price.to_i <= 500000
      false
    end
  end

  def rooms_from_category(gory)
    until @organize_by_category == [] do
      @organize_by_category.shift
    end
    @rooms.each do |cat|
      if gory == cat.category
        @organize_by_category << cat
      else
      end
    end
    return @organize_by_category
  end

  def area
    @rooms.each do |totes_area|
      @total_area += totes_area.find_area
    end
    return @total_area
  end

  def price_per_square_foot
    area
    (@price.to_i / @total_area.to_f).round(2)
  end

  def rooms_sorted_by_area
    @rooms.sort_by { |rm| -rm.find_area}
  end

end
