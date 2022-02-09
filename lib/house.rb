class House
  attr_reader :price, :address, :rooms

  def initialize(price, address)
    @price = price.gsub(/\D/,'').to_i
    @address = address
    @rooms = []
  end

  def add_room(room_num)
    @rooms << (room_num)
  end

  def above_market_average?
    if @price > 500000
      return true
    elsif @price < 500000
      return false
    end
  end

  def rooms_from_category(x)
    bedrooms = []
    living_rooms = []
    basements = []

    if x == :bedroom
      @rooms.each do |room|
        if room.category == :bedroom
        bedrooms << room
        end
      end
      return bedrooms
    elsif x == :living_room
      @rooms.each do |room|
        if room.category == :living_room
        living_rooms << room
        end
      end
      return living_rooms
    elsif x == :basement
      @rooms.each do |room|
        if room.category == :basement
        basements << room
        end
      end
      return basements
    end
  end
end
