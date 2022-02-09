require 'pry'
require './paint'
require './room'

class House
  attr_reader :price, :address, :rooms
  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
  end

  def add_room(room)
    @rooms << room
  end

  def above_market_average?
    value = price.to_i
    if value >= 500000
      return true  
end
