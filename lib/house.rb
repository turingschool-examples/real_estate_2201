class House
  attr_reader :price, :address, :rooms, :basement_arr, :bedroom_arr, :living_room_arr

  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
    @bedroom_arr = []
    @basement_arr = []
    @living_room_arr = []
    @length_total = 0
    @width_total = 0
    @total_area = 0
  end

  def price
    @price.delete('$').to_i
  end

  def address
    @address
  end

  def rooms
    @rooms
  end

  def add_room(room)
    @rooms << room
  end

  def above_market_average?
    if @price.delete('$').to_i > 500000
      true
    else
      false
    end
  end

  def rooms_from_category(cat)
    if cat == :bedroom
      @rooms.each do |elements|
        if elements.category == :bedroom
          @bedroom_arr << elements
        end
      end

    elsif cat == :living_room
      @rooms.each do |elements|
        if elements.category == :living_room
          @living_room_arr << elements
        end
      end

    else cat == :basement
      @rooms.each do |elements|
        if elements.category == :basement
          @basement_arr << elements
        end
      end
    end
  end

  def area
    @rooms.each do |elements|
      @width_total += elements.width.to_i
      @length_total += elements.length
    end
    @total_area = @width_total * @length_total
  end

  def details
    detail_hash = {
                    "price" => @price.delete('$').to_i,
                    "address" => @address
                  }
  end

  # def price_per_square_foot
  #
  # end
  #
  # def rooms_sorted_by_area
  #
  # end

  def rooms_by_category
    category_hash = {
                      :bedroom => @bedroom_arr,
                      :living_room => @living_room_arr,
                      :basement => @basement_arr
                    }

  end

end
