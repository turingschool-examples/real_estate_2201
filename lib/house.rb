class House
  attr_reader :price,
              :address,
              :rooms

  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
  end

  def add_room(room)
    @rooms << room
  end

  def rooms_from_category(category)
   @rooms.select do |room|
     room if room.category == category
   end
  end

    def house_area
      house_area = 0
      @rooms.each do |room|
        house_area += room.area
      end
      house_area
   end

  def details
    puts "The house is #{price} at #{address}"
  end

  def above_market_average
    if @price.to_f < ("$500000").to_f
      puts "#{details} and is above market average"
    else
      puts "#{details} is below market average"
    end
  end
  end
