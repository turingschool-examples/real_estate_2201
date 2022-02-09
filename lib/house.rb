require "./lib/room"


class House
  attr_reader :price, :address, :rooms, :room_cat
  
  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
    @room_cat = []
    @total_area = 0
  end
  
  def add_room(room)
    @rooms << room 
  end
  
  def above_market_average?
    @price.slice!(0)
    if @price.to_i > 500000
      true
    else 
      false
    end 
  end 
  
  def rooms_from_category(category)
    rooms.each do |room|
       if room.room.category == category
            @room_cat << room
       end    
    end
    return 
    @room_cat 
  end 
  
  
  def area
    rooms.each do |room|
      room.room.area += @total_area
    end  
  end 
  
  def details
    @price.slice!(0)
    return { "price" => @price.to_i,
           "address" => @address  
            }
  end 

end
