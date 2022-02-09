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
end
