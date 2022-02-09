require "./room"
require "pry"

class House
attr_reader :price, :address, :rooms, :organize, :total_area

  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
    @organize = []
    @total_area = 0
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
    until @organize == [] do
      @organize.shift
    end
    @rooms.each do |cat|
      if gory == cat.category
        @organize << cat
      else
      end
    end
    return @organize
  end

  def area
    @rooms.each do |totes_area|
      @total_area += totes_area.find_area
    end
    return @total_area
  end
end
