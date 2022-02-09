require './lib/room.rb'
require './lib/house.rb'

RSpec.describe House do
  context 'Iteration 2' do
    it 'exists' do
      house = House.new('$400000', '123 sugar lane')
      expect(house).to be_an_instance_of(House)
    end

    it 'has a price' do
      house = House.new('$400000', '123 sugar lane')
      expect(house.price).to eq(400000)
    end

    it 'has an address' do
      house = House.new('$400000', '123 sugar lane')
      expect(house.address).to eq('123 sugar lane')
    end

    it 'has a list of rooms' do
      house = House.new('$400000', '123 sugar lane')
      expect(house.rooms).to eq([])
    end

    it 'can add rooms' do
      room_1 = Room.new(:bedroom, 10, '13')
      room_2 = Room.new(:bedroom, 11, '15')
      house = House.new('$400000', '123 sugar lane')
      house.add_room(room_1)
      house.add_room(room_2)

      expect(house.rooms).to include(room_1, room_2)
    end
  end
  context 'Iteration 3' do
    it 'can determine if price is above market average' do
      house = House.new('$400000', '123 sugar lane')
      expect(house.above_market_average?).to eq(false)
    end

    it 'can get list of rooms from category'
      house = House.new('$400000', '123 sugar lane')
      room_1 = Room.new(:bedroom, 10, '13')
      room_2 = Room.new(:bedroom, 11, '15')
      room_3 = Room.new(:living_room, 25, '15')
      room_4 = Room.new(:basement, 30, '41')
      house.add_room(room_1)
      house.add_room(room_2)
      house.add_room(room_3)
      house.add_room(room_4)
      expect(house.rooms_from_category(:basement)).to include(room_1, room_2)
  end
end
