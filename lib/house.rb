class House
  attr_reader :price, :address, :rooms
  def initialize(price, address)
    @price = price.delete("$").to_i
    @address = address
    @rooms = []
  end

  def add_room(room)
    @rooms << room
  end

  def above_market_average?
    if @price > 500000
      return true
    else
      false
    end
  end

  def rooms_from_category(category)
    @rooms.group_by {|category| :category}
    
  end

  def area
    room_sizes = []
    @rooms.each do |room|
      room_sizes << room.area
    end
    house_size = 0
    room_sizes.each {|room_size| house_size+=room_size}
    return house_size
  end

  def details
    details = {"price" => @price, "address" => @address}
  end


end
