require 'pry'
class House

  attr_reader :price, :address, :rooms

  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []

  end

  def add_room(new_room)
    @rooms << new_room
  end

  def above_market_average?
    @price = @price[1..-1].to_i
    if @price > 500000
      true
    else
      false
    end

  end

  def rooms_from_category(category)
    room_category= []
    @rooms.each do |room|
      if room.category == category
        room_category << room
      end
    end
    room_category

  end

  def area
    length = []
    width = []

    @rooms.each do |room|

      room_width = room.width.to_i

      if room.length > 0
        length << room.length
      end
      if room_width > 0
        width << room_width
      end
      length
      width


    end

    length_time_width = length.zip(width).map{|x, y| x * y}
    area_sum = length_time_width.sum

  end

  def details

    price_int = @price[1..-1].to_i
    detail = {"price" => price_int, "address" => @address}

  end

  def price_per_square_foot

    length = []
    width = []

    @rooms.each do |room|

      room_width = room.width.to_i

      if room.length > 0
        length << room.length
      end
      if room_width > 0
        width << room_width
      end
      length
      width


    end

    length_time_width = length.zip(width).map{|x, y| x * y}
    area_sum = length_time_width.sum

    price_per_sq_ft = (@price[1..-1].to_f / area_sum).round(2)


  end

  def rooms_sorted_by_area

    @rooms.sort_by(&:area)

  end

  def rooms_by_category
    


  end

end
