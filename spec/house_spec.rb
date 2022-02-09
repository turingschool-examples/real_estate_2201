require 'pry'
require './lib/room'
require './lib/house'

RSpec.describe House do
  before(:each) do
    @house = House.new("$400000", "123 sugar lane")
  end
  context 'Iteration 2' do
    it 'exists' do

      expect(@house).to be_an_instance_of(House)
    end

    it 'has a price' do

      expect(@house.price).to eq(400000)
    end

    it 'has an address' do

      expect(@house.address).to eq("123 sugar lane")
    end

    it 'starts is created without any rooms' do

      expect(@house.rooms).to eq([])
    end

    it 'can add rooms' do

      room_1 = Room.new(:bedroom, 10, '13')
      room_2 = Room.new(:bedroom, 11, '15')
      @house.add_room(room_1)
      expect(@house.rooms).to eq([room_1])
      @house.add_room(room_2)
      expect(@house.rooms).to eq([room_1, room_2])
    end

    it 'can determine if price is above average' do

      expect(@house.above_market_average?).to eq(false)
    end

    it 'can find all rooms in a certain category' do
      room_1 = Room.new(:bedroom, 10, '13')
      room_2 = Room.new(:bedroom, 11, '15')
      room_3 = Room.new(:living_room, 25, '15')
      room_4 = Room.new(:basement, 30, '41')

      @house.add_room(room_1)
      @house.add_room(room_2)
      @house.add_room(room_3)
      @house.add_room(room_4)

      expect(@house.rooms_from_category(:bedroom)).to eq([room_1, room_2])
      expect(@house.rooms_from_category(:basement)).to eq([room_4])
    end

    it 'can calculate the total area of the house' do
      room_1 = Room.new(:bedroom, 10, '13')
      room_2 = Room.new(:bedroom, 11, '15')
      room_3 = Room.new(:living_room, 25, '15')
      room_4 = Room.new(:basement, 30, '41')

      @house.add_room(room_1)
      @house.add_room(room_2)
      @house.add_room(room_3)
      @house.add_room(room_4)

      expect(@house.area).to eq(1900)
    end

    it 'has a hash called details' do

      expect(@house.details).to eq({"price" => 400000, "address" => "123 sugar lane"})
    end
  end
end
