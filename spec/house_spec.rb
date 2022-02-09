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
end
