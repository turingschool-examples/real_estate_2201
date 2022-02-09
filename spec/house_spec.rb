require './lib/room'
require './lib/house'

RSpec.describe House do
  describe 'initialize' do
    it 'exists' do
      house = House.new("$400000", "123 sugar lane")
      expect(house).to be_an_instance_of(House)
    end

    it 'starts with an empty array of rooms' do
      house = House.new("$400000", "123 sugar lane")
      expect(house.rooms).to eq([])
    end

    it 'has a price and address' do
      house = House.new("$400000", "123 sugar lane")
      expect(house.price).to eq(400000)
      expect(house.address).to eq("123 sugar lane")
    end
  end

  describe 'add_room' do
    it 'adds a Room to the rooms array' do
      house = House.new("$400000", "123 sugar lane")
      room_1 = Room.new(:bedroom, 10, '13')
      room_2 = Room.new(:bedroom, 11, '15')

      house.add_room(room_1)
      house.add_room(room_2)

      expect(house.rooms).to eq([room_1, room_2])
    end
  end

  describe 'above_market_average?' do
    it 'is true if price > $500000' do
      house = House.new("$400000", "123 sugar lane")
      expect(house.above_market_average?).to eq(false)
    end
  end
end
