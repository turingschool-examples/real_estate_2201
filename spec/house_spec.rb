require './lib/room.rb'
require './lib/house.rb'

RSpec.describe House do
  context 'Iteration 2' do
    it 'exists' do
      house = House.new('400000', '123 sugar lane')
      expect(house).to be_an_instance_of(House)
    end

    it 'has a price' do
      house = House.new('400000', '123 sugar lane')
      expect(house.price).to eq('400000')
    end

    it 'has an address' do
      house = House.new('400000', '123 sugar lane')
      expect(house.address).to eq('123 sugar lane')
    end

    it 'has a list of rooms' do
      house = House.new('400000', '123 sugar lane')
      expect(house.rooms).to eq([])
    end

    it 'can add rooms' do
      room_1 = Room.new(:bedroom, 10, '13')
      room_2 = Room.new(:bedroom, 11, '15')
      house = House.new('400000', '123 sugar lane')
      expect(house.rooms).to eq([room1, room2])
    end
  end
end
