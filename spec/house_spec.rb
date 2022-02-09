require './lib/room.rb'
require './lib/house.rb'
require 'rspec'

RSpec.describe House do
  context "Iteration 2" do
    it 'creates a new house object' do
      house = House.new("$400000", "123 Sugar Ln")
      expect(house).to be_an_instance_of(House)
    end

    it 'initializes with a price, address, and no rooms' do
      house = House.new("$400000", "123 Sugar Ln")
      expect(house.price).to eq(400000)
      expect(house.address).to eq("123 Sugar Ln")
      expect(house.rooms).to eq([])
    end

    it 'has an add_room method to add room objects to its room attribute' do
      house = House.new("$400000", "123 Sugar Ln")
      room_1 = Room.new(:bedroom, 10, '13')
      room_2 = Room.new(:bedroom, 11, '15')
      house.add_room(room_1)
      house.add_room(room_2)

      expect(house.rooms).to eq([room_1, room_2])
    end
  end

  context "Iteration 3" do
    it 'can determine if value is over market average (fixed $500K)' do
      house = House.new("$400000", "123 sugar lane")

      expect(house.above_market_average?).to eq(false)
    end

    xit 'can list all rooms of a given category' do
      house = House.new("$400000", "123 sugar lane")
      room_1 = Room.new(:bedroom, 10, '13')
      room_2 = Room.new(:bedroom, 11, '15')
      room_3 = Room.new(:living_room, 25, '15')
      room_4 = Room.new(:basement, 30, '41')
      house.add_room(room_1)
      house.add_room(room_2)
      house.add_room(room_3)
      house.add_room(room_4)

      expect(house.rooms_from_category(:bedroom)).to eq([room_1, room2])
      expect(house.rooms_from_category(:basement)).to eq([room_4])
    end

    xit 'can return the area of the entire house' do
      house = House.new("$400000", "123 sugar lane")
      room_1 = Room.new(:bedroom, 10, '13')
      room_2 = Room.new(:bedroom, 11, '15')
      room_3 = Room.new(:living_room, 25, '15')
      room_4 = Room.new(:basement, 30, '41')
      house.add_room(room_1)
      house.add_room(room_2)
      house.add_room(room_3)
      house.add_room(room_4)

      expect(house.area).to eq(1900)
    end

    it 'can return basic details as a hash' do
      house = House.new("$400000", "123 sugar lane")
      room_1 = Room.new(:bedroom, 10, '13')
      room_2 = Room.new(:bedroom, 11, '15')
      room_3 = Room.new(:living_room, 25, '15')
      room_4 = Room.new(:basement, 30, '41')
      house.add_room(room_1)
      house.add_room(room_2)
      house.add_room(room_3)
      house.add_room(room_4)

      expect(house.details).to eq({"price" => 400000, "address" => "123 sugar lane"})
    end

  end
end
