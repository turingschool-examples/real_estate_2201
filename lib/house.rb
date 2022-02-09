class House
  attr_reader :price, :address, :rooms, :details
  def initialize(price, address)
    @price = Monetize.parse(price).to_i
    @address = address
    @rooms = []
    @details = {"price" => @price,
                "address" => @address.to_s
              }
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
    rfc = []
    @rooms.each do |room|
      if room.category == category
        rfc << room
      end
    end
    rfc
  end

  def area
    sqf = 0
    @rooms.each do |room|
      sqf += room.area
    end
    sqf
  end

  def price_per_square_foot
    total_area = 0
      @rooms.each do |room|
        total_area += room.area
      end
    (price.to_f / total_area.to_f).to_f.round(2)
  end

  def rooms_sorted_by_area
    sorted_rooms = @rooms.sort_by { |room| room.area }
    sorted_rooms.reverse
  end

  def rooms_by_category
    bedroom = []
    living_room = []
    basement = []
    @rooms.each do |room|
      if room.category == :bedroom
        bedroom << room
      elsif room.category == :living_room
        living_room << room
      elsif room.category == :basement
        basement << room
      end
    end
    rbc = {:bedroom => bedroom, :living_room => living_room, :basement => basement}
    rbc
  end
end
