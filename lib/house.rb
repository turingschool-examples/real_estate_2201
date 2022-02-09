require 'rspec'
require './lib/room'

class House
attr_reader :price, :address, :rooms

  def initialize(price, address)
    @price = price.delete("$").to_i
    @address = address
    @rooms = []
  end

  def add_room(room_number)
    @rooms << room_number
  end


end
