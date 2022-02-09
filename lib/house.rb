
class House
  attr_reader :price, :address, :rooms, :price_i

  def initialize(price, address)
    @price = price
    @price_i = price.gsub(/\D/,'').to_i
    @address = address
    @rooms = []
  end

  def add_room(room)
    @rooms << room
  end

  def above_market_average?
    if @price_i > 500000
      true
    else
      false
    end
  end

  def rooms_from_category(type)
    type = type
    list_of_rooms = []
    @rooms.each do |room|
      # binding.pry
      if room.category == type
        list_of_rooms << room
      end
    end
    list_of_rooms
    # binding.pry
  end

  def house_area
    house_area = 0
    @rooms.each do |room|
      house_area += room.area
    end
    house_area
  end

  def details
    price = @price.to_i
    details = {"price" => price_i, "address" => @address}
  end


  def price_per_square_foot
    unit_price = (price_i.to_f/house_area.to_f).round(2)
  end

  def rooms_sorted_by_area
    areas = []
    @rooms.each do |room|
    areas << room.area
    end
    areas_s = areas.sort.reverse!
    # binding.pry
    sorted_rooms = []
    areas_s.each do |area|
      # binding.pry
          @rooms.each do |room|
        if room.area == area
          sorted_rooms << room
          # binding.pry
        end
      end
    end
    sorted_rooms
  end

  def rooms_by_category
    rooms_by_cat = {}
    bedroom = []
    living_room = []
    basement = []
# binding.pry
    @rooms.each do |room|
      # binding.pry
      if room.category == :bedroom
        bedroom << room
        rooms_by_cat[:bedroom] = bedroom
      elsif room.category == :living_room
        living_room << room
        rooms_by_cat[:living_room] = living_room
      elsif room.category == :basement
        basement << room
        rooms_by_cat[:basement] = basement
      end
    end
      rooms_by_cat
    # binding.pry
  end


end
