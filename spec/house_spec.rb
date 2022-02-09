require './lib/house'
require 'rspec'

describe House do
  describe "#initialize" do
    house = House.new("$400000", "123 sugar lane")

    it 'exists' do
      expect(house).to be_an_instance_of(House)
    end

    it 'has a price' do
      expect(house.price).to eq("$400000")
    end

    it 'has an address' do
      expect(house.address).to eq("123 sugar lane")
    end

    it "starts with no rooms" do
      expect(house.rooms).to eq([])
    end
  end

  describe '#add_room' do
    house = House.new("$400000", "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, '13')
    room_2 = Room.new(:bedroom, 11, '15')

    it 'can add rooms' do
      house.add_room(room_1)
      house.add_room(room_2)
      expect(house.rooms).to eq([room_1, room_2])
    end
  end

  describe '#above_market_average' do
    it 'can tell you if the price is above mkt avg' do
      house = House.new("$400000", "123 sugar lane")
      expect(house.above_market_average?).to be false
    end
  end

  describe '#rooms_from_category' do
    it 'can tell you which rooms it has of each category' do
      house = House.new("$400000", "123 sugar lane")
      room_1 = Room.new(:bedroom, 10, '13')
      room_2 = Room.new(:bedroom, 11, '15')
      room_3 = Room.new(:living_room, 25, '15')
      room_4 = Room.new(:basement, 30, '41')

      house.add_room(room_1)
      house.add_room(room_2)
      house.add_room(room_3)
      house.add_room(room_4)
      expect(house.rooms_from_category(:bedroom)).to eq([room_1, room_2])
      expect(house.rooms_from_category(:basement)).to eq([room_4])
    end
  end

  describe '#area' do
    house = House.new("$400000", "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, '13')
    room_2 = Room.new(:bedroom, 11, '15')
    room_3 = Room.new(:living_room, 25, '15')
    room_4 = Room.new(:basement, 30, '41')
    house.add_room(room_1)
    house.add_room(room_2)
    house.add_room(room_3)
    house.add_room(room_4)

    it 'can tell you the area of the house' do
      expect(house.area).to eq(1900)
    end

    it 'can tell you the price per square foot' do
      expect(house.price_per_square_foot).to eq(210.53)
    end
  end

  describe '#details' do
    it 'can give you the house\'s price and address info' do
      house = House.new("$400000", "123 sugar lane")
      expect(house.details).to eq({"price" => 400000, "address" => "123 sugar lane"})
    end
  end

  describe 'room sorting' do
    house = House.new("$400000", "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, '13')
    room_2 = Room.new(:bedroom, 11, '15')
    room_3 = Room.new(:living_room, 25, '15')
    room_4 = Room.new(:basement, 30, '41')
    it 'can sort the rooms by category' do
      house.add_room(room_4)
      house.add_room(room_1)
      house.add_room(room_3)
      house.add_room(room_2)
      house.rooms_by_category
      # require 'pry'; binding.pry
      expect(house.rooms_by_category).to eq({:bedroom => [room_1, room_2], :living_room => [room_3], :basement => [room_4]})
    end

    it 'can sort the rooms by area' do
      house.add_room(room_4)
      house.add_room(room_1)
      house.add_room(room_3)
      house.add_room(room_2)
      house.rooms_by_category
      expect(house.rooms_sorted_by_area).to eq([room_1, room_2, room_3, room_4])
    end
  end




end
