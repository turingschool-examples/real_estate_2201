require 'rspec'
require 'pry'
require './lib/room'
require './lib/house'


RSpec.describe Room do
  context "Iteration 2" do
    it 'exists' do
      house = House.new("$400000", "123 sugar lane")
      expect(house).to be_an_instance_of(House)
    end

    it 'has different rooms' do
      house = House.new("$400000", "123 sugar lane")
      room_1 = Room.new(:bedroom, 10, '13')
      room_2 = Room.new(:bedroom, 11, '15')
      house.add_room(room_1)
      house.add_room(room_2)
      expect(house.rooms).to eq([room_1,room_2])
    end

    it 'can tell rooms by category' do
      house = House.new("$400000", "123 sugar lane")
      room_1 = Room.new(:bedroom, 10, '13')
      room_2 = Room.new(:bedroom, 11, '15')
      room_3 = Room.new(:living_room, 25, '15')
      room_4 = Room.new(:basement, 30, '41')
      house.add_room(room_1)
      house.add_room(room_2)
      house.add_room(room_3)
      house.add_room(room_4)
      house.rooms_from_category(:bedroom)
      expect(house.rooms_from_category(:bedroom)).to eq([room_1,room_2])
      expect(house.rooms_from_category(:basement)).to eq([room_4])
    end

    it 'can tell if market value is above or below'  do
      house = House.new("$400000", "123 sugar lane")
      room_1 = Room.new(:bedroom, 10, '13')
      room_2 = Room.new(:bedroom, 11, '15')
      room_3 = Room.new(:living_room, 25, '15')
      room_4 = Room.new(:basement, 30, '41')
      house.add_room(room_1)
      house.add_room(room_2)
      house.add_room(room_3)
      house.add_room(room_4)
      binding.pry
      expect(house.above_market_average).to eq("The house is $400000 at 123 sugar lane
 is below market average")
    end
  end
end
