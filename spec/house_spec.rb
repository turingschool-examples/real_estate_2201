require 'rspec'
require './lib/house'
require './lib/room'

Rspec.describe House do
  context "ITeration 2" do
    it 'can create a house' do
      house = House.new("$400000", "123 sugar lane")
      expect(house.price).to eq(40000)
      expect(house.address).to eq("123 sugar lane")
      expect(house.rooms).to eq([])
    end

    it 'can add rooms to house' do
      house = House.new("$400000", "123 sugar lane")
      room_1 = Room.new(:bedroom, 10, '13')
      room_2 = Room.new(:bedroom, 11, '15')

      house.add_room(room_1)
      house.add_room(room_2)
      expect(house.rooms).to eq([room1, room2])
    end
  end
end
