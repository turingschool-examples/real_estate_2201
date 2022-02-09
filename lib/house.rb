require 'pry'
require './lib/room'

class House
  attr_reader :price, :address
  attr_accessor :rooms

  def initialize(price, address)
    @price = price.delete_prefix('$').to_i
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
      return false
    end
  end
  
end
